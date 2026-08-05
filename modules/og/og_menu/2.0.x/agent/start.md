<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# OG Menu (og_menu) — agent index

Per-**Organic Group** menus, editable by group administrators rather than site administrators.
Depends on core `menu_ui` and **`og`**. Version **2.0.0-alpha4** — an alpha.
Core requirement `^10 || ^11`.

**The gap it fills:** menus are global configuration, so a group cannot arrange its own section
without `administer menu` — a site-wide permission you cannot hand to a group lead. Here a menu
**instance** is a *content entity* attached to a group.

**Access model — correctly shaped.** Routes use **`_entity_access: 'ogmenu_instance.view|update|
delete'`**, not flat permissions, so OG's own group-role system decides who may edit which group's
menu. Permissions: `administer og menu` (`restrict access: true`), plus add/edit/delete/view for
instance entities and one for adding links.

Two practical notes:
- **Alpha release**, and **OG itself** has had a long, interrupted road to Drupal 10/11 — check the
  state of the OG release this builds against before planning around it.
- A per-group menu is a **per-group cache context**. Confirm menu blocks vary by group, or one
  group will be served another's navigation from cache.
