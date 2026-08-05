<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LocalGov menu link group (localgov_menu_link_group) — agent index

Groups existing menu links under a synthetic parent link, described by a config entity. No module
dependencies, no permissions of its own, no Drush; config schema shipped.

Key facts:
- Config entity **`localgov_menu_link_group`**, `config_export`: `id`, `group_label`, `weight`,
  `parent_menu`, `parent_menu_link`, `child_menu_links` (plus `status`).
  Admin routes under `/admin/structure/menu/localgov_menu_link_group`
  (collection / add / edit / delete), via `AdminHtmlRouteProvider`.
- `child_menu_links` uses **numeric keys** deliberately — menu link plugin ids contain dots, and
  config array keys cannot, so the value is stored as a sequence.
- `hook_menu_links_discovered_alter()` loads all groups with `status = 1` and runs
  `MenuLinkGrouper::groupChildMenuLinks()` over the discovered links, inserting the derived group
  link (deriver `Plugin\Deriver\MenuGroups`) and re-parenting the listed children.
- `hook_module_implements_alter()` moves this module's `menu_links_discovered_alter`
  implementation to **last**, so it sees links from every other module.
- `hook_preprocess_menu()` → `_localgov_menu_link_group_filter_menu()`: for each item whose key
  starts with `localgov_menu_link_group`, it loads that subtree
  (`MenuTreeParameters`: root = the group's plugin id, `excludeRoot()`, `setMaxDepth(1)`,
  `onlyEnabledLinks()`), calls `accessManager()->checkNamedRoute()` on each child, and **unsets
  the group** when no child is accessible. It recurses into `below` so nested groups are handled.
  `$variables['menu_name']` defaults to `'admin'` when not set.
- All three entity hooks (`insert`, `update`, `delete`) call
  `\Drupal::service('plugin.manager.menu.link')->rebuild()`.

Notes:
- The access filtering happens at **render** time, not discovery time — so a group still exists in
  the menu tree data for users who cannot use it; only the rendered output drops it. Code that
  reads the menu tree directly must do its own filtering.
- Child links are identified by **plugin id** (e.g. `system.admin_content`). Get them from
  `drush php:eval 'print implode("\n", array_keys(\Drupal::service("plugin.manager.menu.link")->getDefinitions()));'`.
- Changing a group rebuilds all menu links; on a large site that is not free — batch edits rather
  than saving groups in a loop.
