<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Group Storage (group_storage) — agent index

Makes **Storage** entities available inside **Groups**, so a group owns storage items under the
group's access rules. Requires `group` and `storage`. Version **3.1.0**.
**Core requirement `^11` — Drupal 11 only.**

**What each side brings:**
- **Group** — sets of users with their own membership, roles and permissions (departments, teams,
  courses), plus an access system where content belongs to a group and a **group role** decides who
  may do what.
- **Storage** — a lightweight fielded content entity for data that is **not a node**: no URL, no
  publishing workflow, no listing. It exists to hold structured records.

Together: a group owns **records** — an asset register, a contact list, grades, an inventory — with
access by **membership** rather than site-wide roles. Otherwise built by hand with a group reference
field and a custom access hook, which is where mistakes are made.

**Two things worth stating:**
1. **Group access is real access, not a filter.** It participates in the entity access system, so it
   applies to Views (subject to the grants caveat `views_entity_access_check`, same wave, exists to
   address), **JSON:API** and **REST**. That is what makes it worth using.
2. **The group relation is the security boundary.** Settle: who may create items in a group; whether
   a member of one group can reach another's items **by id**; and what happens to the items when the
   **group is deleted**.
