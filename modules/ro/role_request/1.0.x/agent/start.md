<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Role request — agent index

**Request→approve role-granting workflow**. Version **1.0.0**. Core `^11`.

**SECURITY (Danger 3): privilege escalation** — approval (gated only by `administer role requests`) grants any requested role incl. `administrator` via `addRole()`, bypassing core's `administer permissions` and with no is_admin filter (see local security.md). Perms: `request role`, `administer role requests`, `administer role_request settings`. Depends on core `user`.