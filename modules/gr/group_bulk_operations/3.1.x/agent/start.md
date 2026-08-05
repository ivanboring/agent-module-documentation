<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Group Bulk Operations (group_bulk_operations) — agent index

Views **bulk actions for the Group module** — assign/remove group roles, manage memberships across
many groups at once. Requires `group`. Configuration forms at `/admin/group/assign_group_role` and
`/admin/group/remove_group_role`, both behind **`administer group`** — the correct gate; there is
no case for a lesser one. Version **3.1.2**. Core requirement `^9 || ^10 || ^11`.

**Two consequences of what it does, not how it is built:**
1. **Bulk role changes are hard to review and harder to undo.** There is no per-group log entry
   explaining why forty memberships changed at once — a mistaken selection surfaces later and is
   repaired by hand. Run the view, **check the count**, then act.
2. **Membership changes reach beyond the group.** Group roles typically drive **content access**,
   so a bulk removal can silently revoke access people rely on, and a bulk grant can expose
   material they should not see.
