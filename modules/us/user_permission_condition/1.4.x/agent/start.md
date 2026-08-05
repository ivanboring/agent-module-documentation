<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# User Permission Condition (user_permission_condition) — agent index

Condition plugin testing whether the current user holds a **permission** rather than a role.
Depends on core `user`. Core requirement `^9.5 || ^10 || ^11`.

Key facts:
- **Why it beats a role condition:** role is a proxy. "Show to people who can edit content" is
  really a permission; expressing it as a role list means revisiting every condition when a role
  is added, and missing one. Same reasoning as checking permissions rather than roles in code.
- Ordinary condition plugin, so it works in block visibility, Context, Page Manager and custom
  code via `plugin.manager.condition`.
- **Two standing cautions for any visibility condition:**
  - it decides what is **shown**, not what a user may **access** — never an access control;
  - a response varying on it needs the **`user.permissions`** cache context, or the page cache
    serves one visitor's variant to the next.
- Compare `vocabulary_condition` (wave 66) and `request_data_conditions` (wave 58) — same plugin
  system, different axes.
