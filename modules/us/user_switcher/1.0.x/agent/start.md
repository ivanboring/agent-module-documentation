<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# User Switcher — agent index

Lets privileged users **switch into another user account (impersonate)** and restore their session
(support/debugging). Gated by restricted `switch user accounts`; blocks target uid 1 (unless you are uid 1).
Requires PHP 8.0. Version **1.0.1**. Core `^10||^11`.

**SECURITY CAVEATS (1.0.1):** (1) the switch action is **NOT CSRF-protected** — `/user-switch/{user}` is a
GET gated only by the permission, CSRF validation **commented out**; an attacker can CSRF a privileged victim
(`<img src=/user-switch/{uid}>`) into another account's session (`/user-switch/restore` is even
`_access: 'TRUE'`). (2) No higher-privilege guard beyond uid-1 — it can impersonate other admins; grant the
(restricted) permission **only to fully-trusted admins**. Prefer the **Masquerade** module for production.
See `security.md`.
