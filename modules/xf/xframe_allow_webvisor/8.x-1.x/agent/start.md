<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Xframe Allow Webvisor (xframe_allow_webvisor) — agent index

Relaxes framing to allow **Yandex Webvisor** to iframe the site, via a `frame-ancestors` CSP.
Version **8.x-1.8**.

**WARNING (verified — see `security.md`):** it uses `$response->headers->set('content-security-
policy', …)` which **REPLACES the entire CSP** on every response. Verified: a strict
`default-src 'self'; script-src 'self'; object-src 'none'` was destroyed, leaving only
frame-ancestors — **all XSS-hardening directives gone**. Also allows cleartext `http://` Yandex
origins to frame the site. **Do not enable on a site that relies on a CSP for hardening.**