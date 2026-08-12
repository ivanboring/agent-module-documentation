<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Log a user in by visiting a configured secret URL.

---

Secret Login allows a user to log in through a URL specified in the Drupal configuration — an admin configures a secret path (and optional token) mapped to a user account, and visiting that URL logs the visitor in as that account.

**Security warning (as shipped, 1.0.2):** all login routes are `_permission: 'access content'` (anonymous), and `/secret-login/access/{custom_path}` logs the visitor in as the configured user with **no token, no expiry, reusably** — the only secret is a human-chosen (guessable) path. The anonymous `/secret-login/generate/{custom_path}` also mints valid tokens for anyone who knows the path. If a secret URL targets a privileged account this is **unauthenticated account takeover** (verified live as user 1). **Require the CSPRNG token, gate token generation behind a permission, and use a high-entropy path.** Supports Drupal 9 through 12.

---

- Log in via a secret URL.
- Map a path to a user account.
- Support an optional token.
- Configure the path in admin.
- WARNING: direct path login needs no token.
- WARNING: anonymous can mint tokens.
- Require a high-entropy path.
- Gate token generation.
- Support Drupal 9 through 12.
- Handle URL login.
- Restrict privileged targets.
- Avoid account takeover
- Support Drupal.
- Support Drupal.
- Support Drupal.
