<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Control Admin Access provides a form to allow/deny access for IPs to admin pages.

---

Control Admin Access provides a **form to allow or deny access to admin pages by IP address** — restricting
Drupal's admin area to a configured IP allowlist (or blocking listed IPs), as a defense-in-depth hardening layer.
It provides its own permissions, in the Custom package.

Use it to lock admin pages to known IPs. It is a security-hardening feature with important caveats: (1) the
**client IP is spoofable** via `X-Forwarded-For` unless you have **correctly configured trusted reverse proxies**
— so IP restriction is a hardening layer, **not** a substitute for authentication; (2) a **misconfiguration can
lock you (and all admins) out** — if you allowlist the wrong IP or your own address changes, you lose admin
access (recover via drush/DB); test carefully and keep a recovery path. Combine it with strong auth, don't rely
on it alone. Configure the IP rules carefully.

---

- Allow/deny admin access by IP.
- Restrict the admin area to known IPs.
- Add a defense-in-depth layer.
- Provide its own permissions.
- Allowlist or block IPs.
- Harden admin access.
- KNOW the client IP is spoofable (X-Forwarded-For).
- Configure trusted proxies if relying on IP.
- BEWARE lock-out on misconfiguration (keep a recovery path).
- Not rely on it instead of authentication.
- Combine it with strong auth.
- Configure the IP rules carefully.
- Handle admin IP access.
- Restrict by IP.
- Configure the rules.
- Gate admin pages.
- Handle the hardening.
- Limit admin IPs.
- Test before enforcing.
- Provide admin IP restriction.
