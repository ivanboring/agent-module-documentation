<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Security Login Secure (by miniOrange) provides brute-force protection — blocking IPs and accounts after failed login attempts — but as shipped it disables TLS certificate verification on its miniOrange backend calls, including the API-key exchange.

---

Marketed as a comprehensive security solution, this miniOrange module's actual feature is brute-force protection: it blocks IP addresses and user accounts after repeated failed login attempts, a legitimate and useful control. However, review found a security problem in how it talks to its vendor backend that must be understood before relying on it. It disables TLS certificate verification (CURLOPT_SSL_VERIFYPEER = FALSE) on eight requests to miniOrange's xecurify.com API — including the customer registration, the API-KEY retrieval (/rest/customer/key), and the auth challenge — and one call also disables hostname verification (CURLOPT_SSL_VERIFYHOST = false, with a comment claiming it is 'required for https urls', which is the opposite of true). So its connections to the backend, including the exchange that fetches the credential authenticating the site to miniOrange, are encrypted but not authenticated: a man-in-the-middle during setup can intercept the API key and account credentials or feed the module forged responses. That a module sold as security disables TLS verification on its own credential exchange is a contradiction worth stating. The module's local security notes detail it. Use the brute-force feature if wanted (with the usual IP-ban caveats: shared-IP false positives, real client IP behind a proxy), but treat the disabled TLS verification as a defect to patch — remove the VERIFYPEER/VERIFYHOST overrides — before trusting the module, and be aware the setup/registration flow is MITM-exposed as shipped.

---

- Block brute-force login attempts.
- Ban IPs after failed logins.
- Block accounts after failed logins.
- Protect the login form.
- Understand the disabled TLS verification.
- Patch the VERIFYPEER overrides first.
- Restore hostname verification.
- Know the API-key exchange is MITM-exposed.
- Consider shared-IP false positives.
- Use the real client IP behind a proxy.
- Treat the TLS issue as a defect.
- Harden the login.
- Do not trust it as shipped.
- Fix the backend calls.
- Rate-limit logins.
- Review the miniOrange integration.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.