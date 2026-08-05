<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Menu Link Config (menu_link_config) — agent index

Menu links as **configuration entities** (`menu_link_config`). No dependencies.
Core requirement `^8 || ^9 || ^10 || ^11`. **Release is 8.x-1.0-alpha9 — a long-standing alpha.**

Key facts:
- Fills the gap between Drupal's two existing kinds:
  - module links in `*.links.menu.yml` — code, fixed at release;
  - `menu_link_content` — **content**, so absent from `drush cex` and recreated per environment.
  This adds a third kind that exports and imports like any other config.
- Add route `/admin/structure/menu/manage/{menu}/add_config_link` uses
  **`_entity_create_access: 'menu_link_config'`** — correctly scoped rather than a flat permission.
- Links appear in the normal menu UI alongside the other kinds, so editors see one list.
- **Two caveats to state:**
  - alpha, and has been for a long time;
  - config entities do not translate through **content translation** the way `menu_link_content`
    does. Check the multilingual story before adopting on a translated site.
- Compare `config_terms` (wave 61), which applies the same content→config reasoning to taxonomy
  terms, with the same trade-off shape.
