<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Group Bulk Operations adds Views bulk actions for the Group module — assigning and removing group roles, and managing memberships across many groups at once.

---

The Group module models teams, departments, courses and organisations as entities with their own membership and their own role set, and once a site has more than a handful of them the administration becomes repetitive. Adding a new moderator to forty groups, removing a departing member from every group they belong to, granting a role across a cohort at the start of a term — each is the same operation performed many times through the same three-click form. Bulk operations over a view is Drupal's established answer to that shape of problem, and this supplies the group-specific actions, requiring `group`, version **3.1.2** on `^9 || ^10 || ^11`. Its configuration forms sit behind **`administer group`**, which is the correct gate: bulk membership and role changes across a site's groups are exactly what that permission is for, and there is no case for a lesser one. Two things follow from what the module does rather than from how it is built. **Bulk role changes are hard to review and harder to undo** — there is no per-group log entry saying why forty memberships changed at once, so a mistaken selection is discovered later and repaired by hand; run the view, check the count, then act. And **membership changes have consequences beyond the group**, since group roles typically drive content access, so a bulk removal can silently revoke access to material people were relying on, and a bulk grant can expose material they should not see.

---

- Add a moderator to many groups.
- Remove a departing member everywhere.
- Grant a role across a cohort.
- Manage course memberships in bulk.
- Bulk-assign a group role.
- Remove a role from many groups.
- Onboard a team across departments.
- Offboard a leaver from all groups.
- Update memberships at term start.
- Apply a membership change site-wide.
- Reduce repetitive group administration.
- Fix a mis-assigned role in bulk.
- Manage a large group estate.
- Assign roles from a filtered view.
- Support an academic year rollover.
- Reorganise departmental groups.
- Bulk-manage an organisation's structure.
- Apply a policy change across groups.
