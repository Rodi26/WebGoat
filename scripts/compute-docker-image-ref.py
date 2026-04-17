#!/usr/bin/env python3
"""Write DOCKER_IMAGE_REF, JF_REGISTRY_HOST, and a canonical JF_URL to GITHUB_ENV.

Reads: JF_REGISTRY_HOST (optional), JF_URL, JFROG_URL_FALLBACK (optional), DOCKER_REPO,
ArtifactName, Version, GITHUB_ENV.

Rejects mistaken JF_URL values where the \"host\" is actually a repo key (no dots), e.g.
https://rodolphef-oci-dev-virtual/ — falls back to JFROG_URL_FALLBACK (vars.JFROG_URL) for
the registry host.

Also overwrites JF_URL with a canonical Artifactory base URL (e.g. https://solenglatest.jfrog.io/)
so jfrog/setup-jfrog-cli does not use a malformed secret (fixes \"first path segment in URL
cannot contain colon\" from jf rt ping).
"""
from __future__ import annotations

import os
import sys
from urllib.parse import urlparse


def netloc_from_url(jf: str) -> str:
    jf = jf.strip()
    if not jf:
        return ""
    u = urlparse(jf if "://" in jf else "https://" + jf)
    return u.netloc


def is_plausible_registry_host(netloc: str) -> bool:
    if not netloc:
        return False
    if netloc.startswith("127.0.0.1"):
        return True
    if netloc.startswith("localhost"):
        return True
    # FQDN (x.jfrog.io, artifactory.example.org, …). Rejects repo keys like rodolphef-oci-dev-virtual.
    return "." in netloc


def normalize_repo(repo: str) -> str:
    repo = repo.strip()
    if "/" in repo:
        head, tail = repo.split("/", 1)
        if ".jfrog.io" in head:
            return tail.strip("/")
    return repo


def pick_registry_host() -> str:
    reg = os.environ.get("JF_REGISTRY_HOST", "").strip()
    if reg and is_plausible_registry_host(reg):
        return reg

    for label, raw in (
        ("JF_URL", os.environ.get("JF_URL", "")),
        ("JFROG_URL_FALLBACK", os.environ.get("JFROG_URL_FALLBACK", "")),
    ):
        host = netloc_from_url(raw)
        if is_plausible_registry_host(host):
            return host

    bad_jf = netloc_from_url(os.environ.get("JF_URL", ""))
    bad_fb = netloc_from_url(os.environ.get("JFROG_URL_FALLBACK", ""))
    print(
        "::error::Cannot determine Docker registry host. "
        "Set secret JF_URL to the Artifactory base URL (e.g. https://solenglatest.jfrog.io/) "
        "or ensure the environment variable JFROG_URL matches that URL. "
        f"JF_URL parsed netloc={bad_jf!r}, JFROG_URL_FALLBACK parsed netloc={bad_fb!r}.",
        file=sys.stderr,
    )
    raise SystemExit(1)


def _collapse_ws(s: str) -> str:
    return " ".join(s.split()).strip()


def canonical_jf_url_for_cli(host: str, jf_url: str, jfrog_fallback: str) -> str:
    """Base URL for `jf config` / `jf rt` — must be a valid origin. Overwrites bad secrets.JF_URL."""
    h = host.strip()
    for raw in (_collapse_ws(jf_url), _collapse_ws(jfrog_fallback)):
        if not raw:
            continue
        u = urlparse(raw if "://" in raw else "https://" + raw)
        if u.netloc.lower() != h.lower():
            continue
        if not is_plausible_registry_host(u.netloc):
            continue
        scheme = u.scheme or "https"
        if h.startswith("127.0.0.1") or h.lower().startswith("localhost"):
            scheme = "http"
        return f"{scheme}://{u.netloc}/"
    if h.startswith("127.0.0.1") or h.lower().startswith("localhost"):
        return f"http://{h}/"
    return f"https://{h}/"


def main() -> int:
    repo = normalize_repo(os.environ.get("DOCKER_REPO", ""))
    art = os.environ["ArtifactName"]
    ver = os.environ["Version"]
    gh = os.environ.get("GITHUB_ENV")
    if not gh:
        print("GITHUB_ENV not set", file=sys.stderr)
        return 1

    if not repo:
        print(
            "::error::DOCKER_DEV_REPO is empty. Set the Docker repository key only (e.g. rodolphef-oci-dev-virtual).",
            file=sys.stderr,
        )
        return 1

    host = pick_registry_host()
    ref = f"{host}/{repo}/{art}:{ver}"
    cli_url = canonical_jf_url_for_cli(
        host,
        os.environ.get("JF_URL", ""),
        os.environ.get("JFROG_URL_FALLBACK", ""),
    )
    with open(gh, "a", encoding="utf-8") as f:
        f.write(f"JF_REGISTRY_HOST={host}\n")
        f.write(f"DOCKER_IMAGE_REF={ref}\n")
        f.write(f"JF_URL={cli_url}\n")
    print("JF_REGISTRY_HOST=" + host)
    print("DOCKER_IMAGE_REF=" + ref)
    print("JF_URL=" + cli_url)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
