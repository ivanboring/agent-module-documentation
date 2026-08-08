<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Error Level Permission shows errors, warnings and notices only to users with permission to see them.

---

Error Level Permission restricts who sees on-screen PHP errors — showing errors, warnings and notices
only to users who hold a dedicated permission, so error output isn't exposed to anonymous/unprivileged
visitors (while still visible to developers/admins who have the permission). It provides its own permissions.

Use it to keep error messages away from ordinary visitors. This is a **positive security-hardening** measure:
on-screen PHP errors can leak sensitive detail (file paths, SQL, stack traces) that aids attackers, so gating
error display by permission reduces that information-disclosure surface — a good complement to setting the
site's error-display level appropriately for production. It has no other access-control role. Grant the
"see errors" permission only to trusted developers/admins.

---

- Show errors only to permitted users.
- Hide errors from unprivileged visitors.
- Keep warnings/notices restricted.
- Provide its own permissions.
- Reduce information disclosure.
- Prevent leaking paths/SQL/stack traces.
- Complement production error settings.
- Grant 'see errors' to trusted devs/admins only.
- Have no other access-control role.
- Harden error display.
- Restrict error output.
- Keep errors developer-only.
- Reduce the disclosure surface.
- Configure the permission.
- Gate error messages.
- Hide error detail.
- Restrict who sees errors.
- Protect error output.
- Harden information disclosure.
- Show errors by permission.
