<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom Admin URL restricts the admin path by URL.

---

Custom Admin URL **restricts admin and user routes by URL/host** — via an access check it denies (403) access
to admin and user pages when they are reached from the "wrong" (front-office) URL/subdomain, so administration is
only reachable through a designated back-office host. It works on core 10–11.

Use it to segregate the admin surface onto a back-office host. It is an access-hardening feature, and it does add a
real access check (not merely hiding a link). Understand its scope: it is **defense-in-depth that complements — not
replaces — Drupal's role/permission checks** (never rely on it as your only protection for admin routes), and its
correctness depends on **trusted host resolution** — Drupal's `trusted_host_patterns` should be configured so the
host it keys on can't be spoofed via the `Host` header, and the front-office host must genuinely be unable to serve
admin routes. It has permissions/config for its back-office URL. Configure the back-office URL.

---

- Restrict admin/user routes by host.
- Return 403 from the front-office host.
- Confine admin to a back-office host.
- Serve access hardening.
- Add a real access check (not link-hiding).
- Deny wrong-host admin access.
- BE defense-in-depth complementing (not replacing) role/permission checks.
- Depend on trusted host resolution (configure trusted_host_patterns; no Host-header spoofing).
- Not be your only protection for admin routes.
- Ensure the front-office host can't serve admin routes.
- Have config for its back-office URL.
- Configure the back-office URL.
- Handle admin-URL restriction.
- Gate admin by host.
- Configure the URL.
- Restrict admin.
- Handle the access.
- Segregate admin.
- Deny front-office admin.
- Provide admin-URL restriction.
