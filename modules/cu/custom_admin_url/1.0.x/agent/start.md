<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Custom Admin URL — agent index

**Restricts admin/user routes to a designated back-office URL/host** (403 from the front-office host). Version
**1.0.x** (dev). Core `^10||^11`.

Access-hardening — a **real access check**, but **defense-in-depth complementing (not replacing) role/permission
checks**; correctness relies on **trusted host resolution** (set `trusted_host_patterns`; the front host must not
serve admin routes). Don't make it your only admin protection.
