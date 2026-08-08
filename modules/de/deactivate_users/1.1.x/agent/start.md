<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Deactivate Inactive Users — agent index

**Blocks accounts inactive for N days** (via cron; grace window; optional notification) — account-hygiene
security control reducing attack surface from stale accounts. Depends on `token`. Config at
`deactivate_users.admin_settings` (admin-gated). Version **1.1.2**. Core `^9||^10||^11`.

Positive security measure (reversible). Set threshold to policy; **exclude service/system accounts**;
tune grace/notifications.
