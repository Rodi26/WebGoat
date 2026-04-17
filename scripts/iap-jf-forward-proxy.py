#!/usr/bin/env python3
"""
Local HTTP forward proxy for GitHub Actions: adds Google IAP OIDC to Proxy-Authorization
so JFrog can keep Authorization: Bearer <platform token>.

Request and response bodies are streamed (no full buffering) so Docker layer push/pull
does not OOM the runner or hit artificial limits — fixes "broken pipe" on large uploads.

See: https://cloud.google.com/iap/docs/authentication-howto#authenticating_from_proxy-authorization_header

Environment:
  JF_UPSTREAM_HOST  — Artifactory hostname only (e.g. artifactory.example.org)
  IAP_GOOGLE_JWT    — OIDC ID token (audience = IAP OAuth client ID)
  JF_IAP_PROXY_BIND — host:port to listen (default 127.0.0.1:18081)
"""
from __future__ import annotations

import http.client
import os
import ssl
import sys
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from typing import Dict

UPSTREAM = os.environ.get("JF_UPSTREAM_HOST", "").strip()
IAP_JWT = os.environ.get("IAP_GOOGLE_JWT", "").strip()
BIND = os.environ.get("JF_IAP_PROXY_BIND", "127.0.0.1:18081").strip()

# Large uploads (Docker layers) can exceed 10+ minutes behind IAP.
UPSTREAM_TIMEOUT = int(os.environ.get("JF_IAP_PROXY_UPSTREAM_TIMEOUT", "3600"))
READ_CHUNK = 64 * 1024

if not UPSTREAM or not IAP_JWT:
    print("iap-jf-forward-proxy: need JF_UPSTREAM_HOST and IAP_GOOGLE_JWT", file=sys.stderr)
    sys.exit(1)

_LOCAL_HTTP_ORIGIN = f"http://{BIND}"

_HEADERS_REWRITE_UPSTREAM_URLS = frozenset(
    {"www-authenticate", "location", "content-location"}
)


def _rewrite_upstream_absolute_urls(value: str) -> str:
    v = value.replace(f"https://{UPSTREAM}:443", _LOCAL_HTTP_ORIGIN)
    v = v.replace(f"https://{UPSTREAM}", _LOCAL_HTTP_ORIGIN)
    v = v.replace(f"http://{UPSTREAM}", _LOCAL_HTTP_ORIGIN)
    return v


def _hop_by_hop() -> set[str]:
    return {
        "connection",
        "content-length",
        "keep-alive",
        "proxy-authenticate",
        "proxy-authorization",
        "te",
        "trailers",
        "transfer-encoding",
        "upgrade",
    }


class ForwardHandler(BaseHTTPRequestHandler):
    protocol_version = "HTTP/1.1"

    def log_message(self, fmt: str, *args) -> None:
        print(f"[iap-jf-forward-proxy] {self.address_string()} - {fmt % args}", file=sys.stderr)

    def _forward(self) -> None:
        clen_hdr = self.headers.get("Content-Length")
        try:
            clen = int(clen_hdr) if clen_hdr else 0
        except ValueError:
            clen = 0
        te = (self.headers.get("Transfer-Encoding") or "").lower()

        out_headers: Dict[str, str] = {}
        for k, v in self.headers.items():
            lk = k.lower()
            if lk in _hop_by_hop() or lk == "host":
                continue
            out_headers[k] = v
        out_headers["Host"] = UPSTREAM
        out_headers["Proxy-Authorization"] = f"Bearer {IAP_JWT}"

        ctx = ssl.create_default_context()
        conn = http.client.HTTPSConnection(UPSTREAM, context=ctx, timeout=UPSTREAM_TIMEOUT)
        try:
            conn.putrequest(self.command, self.path)
            for k, v in out_headers.items():
                conn.putheader(k, v)
            conn.endheaders()

            if clen > 0:
                remaining = clen
                while remaining > 0:
                    n = min(READ_CHUNK, remaining)
                    chunk = self.rfile.read(n)
                    if not chunk:
                        break
                    conn.send(chunk)
                    remaining -= len(chunk)
            elif "chunked" in te:
                print(
                    "[iap-jf-forward-proxy] chunked request body not supported; use Content-Length",
                    file=sys.stderr,
                )
                self.send_error(411, "Length Required")
                return

            resp = conn.getresponse()

            self.send_response(resp.status)
            hop = _hop_by_hop()
            for hk, hv in resp.getheaders():
                if hk.lower() in hop:
                    continue
                if hk.lower() in _HEADERS_REWRITE_UPSTREAM_URLS:
                    hv = _rewrite_upstream_absolute_urls(hv)
                self.send_header(hk, hv)
            self.end_headers()

            while True:
                chunk = resp.read(READ_CHUNK)
                if not chunk:
                    break
                self.wfile.write(chunk)
        finally:
            conn.close()

    def do_GET(self) -> None:
        self._forward()

    def do_HEAD(self) -> None:
        self._forward()

    def do_POST(self) -> None:
        self._forward()

    def do_PUT(self) -> None:
        self._forward()

    def do_PATCH(self) -> None:
        self._forward()

    def do_DELETE(self) -> None:
        self._forward()

    def do_OPTIONS(self) -> None:
        self._forward()


def main() -> None:
    host, _, port_s = BIND.partition(":")
    port = int(port_s or "18081")
    server = ThreadingHTTPServer((host, port), ForwardHandler)
    print(
        f"iap-jf-forward-proxy: listening on http://{host}:{port} → https://{UPSTREAM}/ "
        f"(streamed I/O, upstream_timeout={UPSTREAM_TIMEOUT}s)",
        flush=True,
    )
    server.serve_forever()


if __name__ == "__main__":
    main()
