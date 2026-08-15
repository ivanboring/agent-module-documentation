# GeoIP — manual setup guide

**GeoIP** (`geoip`) is a small API module that turns a visitor's IP address into an
ISO country code (`US`, `DE`, and so on). It does not build any user-facing feature
on its own — it provides the lookup, and you wire the returned country into your own
logic: country-based content personalization, a "you appear to be in X" banner,
pre-selecting a currency or language, feeding a GDPR/consent or tax flow, or
access/redirect decisions in a custom module.

Lookups go through pluggable **GeoLocator** plugins, and two ship with the module:

- **CDN** (the default) — reads a country header set by your CDN, either
  Cloudflare's `CF-IPCountry` or Amazon CloudFront's viewer-country header.
- **Local dataset** — queries a self-hosted MaxMind GeoLite2 `.mmdb` database via the
  `geoip2/geoip2` library, deriving the country from the resolved IP with no external
  service.

Results are cached permanently per IP, so repeated lookups are cheap. Developers can
add their own GeoLocator plugin for another CDN or geolocation service, and the
lookup is available both as a service (`geoip.geolocation`) and directly from the
plugin manager.

> **Security note (important if you use GeoIP for access control).** The **default
> CDN plugin trusts a request header** that any client can send. If your site is not
> genuinely served through the matching CDN — or can be reached on an origin IP that
> bypasses it — a visitor can forge their country by sending `CF-IPCountry` (or the
> CloudFront header) themselves, and the spoofed value is then cached. If you use
> GeoIP for geo-gating, compliance, or any security decision, either ensure your
> edge injects the header and your origin cannot be reached without it (and strips
> client-supplied copies), or switch to the **Local** MaxMind plugin, which reads
> the actual IP. See the module's [`security.md`](../security.md) for details.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token-cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module and the
   `geoip2/geoip2` library with Composer, and enable it.
2. [Configuration](configuration/index.md) — choose the active GeoLocator plugin,
   the debug toggle, and (for Local) install a MaxMind database.

## Where it lives in the admin menu

Its settings form is at **Configuration → System → GeoIP**
(`/admin/config/system/geoip`), gated by the core **Administer site configuration**
permission (the module ships no permissions of its own). The **Status report**
(**Reports → Status report**) shows which geolocation database will be used and
warns if it is missing or out of date.
