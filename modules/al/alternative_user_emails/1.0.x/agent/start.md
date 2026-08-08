<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Alternative User Emails — agent index

Stores **additional (alternative) email addresses** for user accounts. Depends on core `user`, `field`.
Version **1.0.1**. Core `^10.3||^11`.

User/identity — alternative emails are **personal data** (store/expose per policy). If any flow lets users
log in / reset by an alternative address, ensure those addresses are **verified + unique** (identity/takeover
risk) — the module stores them; enforce in whatever consumes them. No access role of its own.
