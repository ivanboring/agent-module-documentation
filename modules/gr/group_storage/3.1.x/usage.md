<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Group Storage makes Storage entities available inside Groups, so a group can own storage items with the group's own access rules.

---

Two modules meet here. **Group** models sets of users with their own membership, roles and permissions — departments, teams, courses, clubs — and provides an access system in which content belongs to a group and a group role decides who may do what with it. **Storage** provides a lightweight fielded content entity for data that is not a node: it has no URL, no publishing workflow and no listing, and exists to hold structured records. Combining them means a group can own records — a department's asset register, a team's contact list, a course's grades, a club's equipment inventory — with access decided by group membership rather than by site-wide roles. That is a genuinely useful shape and one that is otherwise built by hand with a group reference field and a custom access hook, which is exactly where mistakes are made. Version **3.1.0** on **`^11`** — Drupal 11 only — requiring `group` and `storage`. Two things worth stating. **Group access is real access, not a filter**: it participates in the entity access system, so it applies to Views (subject to the grants caveat that `views_entity_access_check` in this same wave exists to address), to JSON:API and to REST — which is what makes it worth using rather than a reference field and a hope. And **the group relation is the security boundary**, so the questions to settle before building on it are who may create storage items in a group, whether a member of one group can reach another group's items by id, and what happens to the items when the group is deleted.

---

- Give a group its own records.
- Store a department's asset register.
- Keep a team's contact list per group.
- Store course grades per course group.
- Manage a club's equipment inventory.
- Scope structured data to a group.
- Apply group permissions to records.
- Avoid a custom group access hook.
- Store per-group configuration data.
- Keep records out of the node system.
- Manage per-team reference data.
- Store group-owned metadata.
- Scope a registry to a department.
- Apply membership-based access to data.
- Store per-group logs or notes.
- Manage a group's resource list.
- Keep structured data private to a group.
- Model group-owned records properly.
