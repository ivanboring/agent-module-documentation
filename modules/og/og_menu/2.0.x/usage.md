<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
OG Menu gives each Organic Group its own menu, editable by the group's own administrators rather than by site administrators.

---

Organic Groups turns a Drupal site into many small sites — a department, a project, a club — each with its own members, roles and content. The gap it leaves is navigation: menus are global configuration, so a group cannot arrange its own section without someone with `administer menu` doing it for them, and `administer menu` is a site-wide permission you cannot hand to a group lead. This module closes that by making a menu **instance** a content entity attached to a group, with its own entity-access permissions. Version **2.0.0-alpha4** on core `^10 || ^11`, depending on `menu_ui` and `og`. The access model is the part worth reading: routes use `_entity_access` on `ogmenu_instance` rather than flat permissions, which is the right shape — it lets OG's own group-role system decide who may edit which group's menu, instead of a single site-wide permission granting everyone everything. `administer og menu` is marked `restrict access: true`, with separate add/edit/delete/view permissions for the instance entities and a further permission for adding links. Two practical notes: the release is an **alpha**, and OG itself has had a long and interrupted road to Drupal 10/11, so check the state of the OG release this is built against before planning around it. And a per-group menu is a per-group cache context — confirm that menu blocks vary by group, or one group will see another's navigation.

---

- Give each group its own menu.
- Let a group lead arrange their section.
- Avoid granting administer menu site-wide.
- Build per-department navigation.
- Support a project workspace's links.
- Delegate navigation to group admins.
- Add links to a group menu.
- Keep group navigation separate.
- Support a club's own pages.
- Reduce site-administrator workload.
- Model an intranet's departments.
- Give a community group its own structure.
- Control menu access per group.
- Support many small sites in one.
- Let members propose menu links.
- Build a course's navigation.
- Keep menus aligned with group content.
- Support a federated site structure.
