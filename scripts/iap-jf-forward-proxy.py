#!/usr/bin/env python3
"""
Local HTTP forward proxy for GitHub Actions: adds Google IAP OIDC to Proxy-Authorization
so JFrog can keep Authorization: Bearer <platform token>.

Uses HTTPSConnection.request() with Host + Proxy-Authorization in headers — Python's
http.client then sets skip_host automatically (see HTTPConnection._send_request).

Large request bodies (e.g. Docker layer PUTs) are streamed to upstream instead of being
fully buffered in memory. Responses with a Content-Length are streamed to the client.

See: https://cloud.google.com/iap/docs/authentication-howto#authenticating_from_proxy-authorization_header

Environment:
  JF_UPSTREAM_HOST  — Artifactory hostname only (e.g. artifactory.example.org)
  IAP_GOOGLE_JWT    — OIDC ID token (audience = IAP OAuth client ID)
  JF_IAP_PROXY_BIND — host:port to listen (default 127.0.0.1:18081)
  JF_IAP_PROXY_UPSTREAM_TIMEOUT — seconds for upstream TLS socket (default 3600)
"""
from __future__ import annotations

import http.client
import os
import ssl
import sys
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from typing import Dict, Generator, Iterator, Optional, Union
from urllib.parse import urlparse

UPSTREAM = os.environ.get("JF_UPSTREAM_HOST", "").strip()
IAP_JWT = os.environ.get("IAP_GOOGLE_JWT", "").strip()
BIND = os.environ.get("JF_IAP_PROXY_BIND", "127.0.0.1:18081").strip()
UPSTREAM_TIMEOUT = int(os.environ.get("JF_IAP_PROXY_UPSTREAM_TIMEOUT", "3600"))

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


def normalize_request_target(raw: str) -> str:
    """Path + query only for the upstream request line (not an absolute http(s) URL).

    Some clients send ``GET http://127.0.0.1:18081/artifactory/...``; forwarding that
    as the request-target can break the origin request line.
    """
    if not raw:
        return "/"
    if raw == "*":
        return raw
    if raw.startswith("http://") or raw.startswith("https://"):
        u = urlparse(raw)
        path = u.path or "/"
        return f"{path}?{u.query}" if u.query else path
    return raw


class _LimitedBodyReader:
    """Stream at most *limit* bytes from *raw* (avoids OOM on large Docker layer PUTs)."""

    __slots__ = ("_raw", "_rem")

    def __init__(self, raw, limit: int):
        self._raw = raw
        self._rem = limit

    def read(self, n: int = -1) -> bytes:
        if self._rem <= 0:
            return b""
        if n is None or n < 0:
            n = self._rem
        n = min(n, self._rem)
        data = self._raw.read(n)
        self._rem -= len(data)
        return data


def _iter_chunked_request_body(rfile) -> Generator[bytes, None, None]:
    """Decode HTTP/1.1 chunked request body and yield pieces (for re-encoding upstream)."""
    while True:
        line = rfile.readline()
        if not line:
            break
        part = line.split(b";", 1)[0].strip()
        try:
            chunk_size = int(part, 16)
        except ValueError:
            break
        if chunk_size == 0:
            while True:
                trailer = rfile.readline()
                if trailer in (b"\r\n", b"\n", b"", b"\r"):
                    break
            break
        remaining = chunk_size
        while remaining > 0:
            data = rfile.read(min(65536, remaining))
            if not data:
                return
            remaining -= len(data)
            yield data
        rfile.read(2)


class ForwardHandler(BaseHTTPRequestHandler):
    protocol_version = "HTTP/1.1"

    def log_message(self, fmt: str, *args) -> None:
        print(f"[iap-jf-forward-proxy] {self.address_string()} - {fmt % args}", file=sys.stderr)

    def _forward(self) -> None:
        te_in = (self.headers.get("Transfer-Encoding") or "").lower()
        clen_hdr = self.headers.get("Content-Length")
        chunked_in = "chunked" in te_in

        out_headers: Dict[str, str] = {}
        for k, v in self.headers.items():
            lk = k.lower()
            if lk in _hop_by_hop() or lk == "host":
                continue
            out_headers[k] = v
        out_headers["Host"] = UPSTREAM
        out_headers["Proxy-Authorization"] = f"Bearer {IAP_JWT}"

        path = normalize_request_target(self.path)

        ctx = ssl.create_default_context()
        conn = http.client.HTTPSConnection(UPSTREAM, context=ctx, timeout=UPSTREAM_TIMEOUT)
        try:
            body: Optional[Union[bytes, _LimitedBodyReader, Iterator[bytes]]] = None
            encode_chunked = False
            if chunked_in:
                for lk in list(out_headers.keys()):
                    if lk.lower() in ("content-length", "transfer-encoding"):
                        del out_headers[lk]
                body = _iter_chunked_request_body(self.rfile)
                encode_chunked = True
            elif clen_hdr is not None:
                clen = int(clen_hdr)
                if clen > 0:
                    body = _LimitedBodyReader(self.rfile, clen)
            conn.request(
                self.command,
                path,
                body=body,
                headers=out_headers,
                encode_chunked=encode_chunked,
            )
            resp = conn.getresponse()
            self._forward_response(resp)
        finally:
            conn.close()

    def _forward_response(self, resp: http.client.HTTPResponse) -> None:
        """Stream upstream body; buffer only when Content-Length is unknown (rare for registry)."""
        clen_hdr = resp.getheader("Content-Length")
        buffered: Optional[bytes] = None
        if clen_hdr is None:
            buffered = resp.read()

        self.send_response(resp.status)
        for hk, hv in resp.getheaders():
            lk = hk.lower()
            if lk in _hop_by_hop():
                continue
            if lk in _HEADERS_REWRITE_UPSTREAM_URLS:
                hv = _rewrite_upstream_absolute_urls(hv)
            self.send_header(hk, hv)
        if clen_hdr is not None:
            n = int(clen_hdr)
            self.end_headers()
            remaining = n
            while remaining > 0:
                chunk = resp.read(min(1024 * 1024, remaining))
                if not chunk:
                    break
                self.wfile.write(chunk)
                remaining -= len(chunk)
            return

        assert buffered is not None
        self.send_header("Content-Length", str(len(buffered)))
        self.end_headers()
        if buffered:
            self.wfile.write(buffered)

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
        f"(upstream_timeout={UPSTREAM_TIMEOUT}s)",
        flush=True,
    )
    server.serve_forever()


if __name__ == "__main__":
    main()
