<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Xframe Allow Webvisor relaxes the site's framing policy to allow Yandex Webvisor (session recording) to load the site in an iframe — but it does so by overwriting the entire Content-Security-Policy header.

---

Yandex Webvisor records user sessions by loading the site in an iframe, which the default framing policy blocks. Xframe Allow Webvisor relaxes that by emitting a `Content-Security-Policy: frame-ancestors …` header allowing Yandex origins. The implementation has a serious side effect, verified in this review and detailed in the local security notes: it uses `$response->headers->set('content-security-policy', …)`, which **replaces** the whole CSP header rather than adding a directive to it — so any Content-Security-Policy the site already had (its own hardening, or from a security module) is silently destroyed and replaced with a policy containing only `frame-ancestors`. Verified: a strict `default-src 'self'; script-src 'self'; object-src 'none'` became just the frame-ancestors policy, losing all XSS-mitigation directives. It also allows cleartext `http://` Yandex origins to frame the site. So enabling this module on a site that relies on a CSP is a security regression. Only use it where Yandex Webvisor is genuinely needed and the site does not depend on a Content-Security-Policy for hardening — and treat the CSP-overwrite as a defect to be aware of (the module should merge, not replace).

---

- Allow Yandex Webvisor to frame the site.
- Relax the framing policy for session recording.
- Only enable where Webvisor is used.
- Beware it overwrites the whole CSP.
- Do not run it with a hardening CSP.
- Know it destroys an existing CSP.
- Drop the http:// origins.
- Understand the clickjacking trade.
- Merge rather than replace the CSP.
- Confirm no CSP is relied on.
- Enable Webvisor framing knowingly.
- Check the response CSP after enabling.
- Avoid on CSP-hardened sites.
- Treat the overwrite as a defect.
- Restrict to where needed.
- Review the framing exposure.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.