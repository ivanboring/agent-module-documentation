<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Generate temporary token-based login links for admin access.

---

Temporary Admin Login generates temporary login links for admin access with (nominally) customizable roles and expiration time — an admin creates a tokenized URL that logs a visitor in for a limited time, e.g. to grant temporary support access.

**Security warning (as shipped, 1.0.1):** the login route `/temp-admin-login/{token}` is `_access: 'TRUE'` and **always logs in as user 1 (super-admin) regardless of the chosen role** (the role is ignored), the token is generated with `mt_rand` (non-cryptographic/predictable, not `random_bytes`), and it is **reusable** (never single-use) for the whole window — so every issued link is a reusable super-admin bearer credential. **Honor the stored role, use a CSPRNG token, and make links single-use.** Depends on core `user`; supports Drupal 9, 10, and 11.

---

- Generate temporary login links.
- Tokenize admin access.
- Set an expiration time.
- Grant temporary access.
- WARNING: always logs in as user 1.
- WARNING: token uses mt_rand + reusable.
- Honor the stored role.
- Use a CSPRNG single-use token.
- Depend on core `user`.
- Support Drupal 9, 10, and 11.
- Handle temporary login.
- Restrict privileged links.
- Support Drupal.
- Support Drupal.
- Support Drupal.
