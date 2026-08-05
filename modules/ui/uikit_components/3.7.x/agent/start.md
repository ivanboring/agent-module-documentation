<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# UIkit Components (uikit_components) — agent index

Companion module for the **UIkit base theme**, adding components and functionality a theme cannot
provide alone. Requires core `link` and `menu_link_content`. Config route
`uikit_components.admin` (`configure` in info.yml). No permissions of its own, no schema, no Drush.

Key facts:
- `src/UIkitComponents.php` is the module's main helper class; `uikit_components.services.yml`
  registers services and `uikit_components.api.php` documents the hooks/API for themes.
- Routes/links: `uikit_components.routing.yml`, `uikit_components.links.menu.yml`,
  `uikit_components.links.task.yml` — an admin settings page with menu and local task entries.
- Menu integration is the main reason for the `link` + `menu_link_content` dependencies: Drupal
  menus are rendered using UIkit navigation/offcanvas/dropdown markup.
- `info.yml` still carries a legacy `core: 8.x` line next to
  `core_version_requirement: ^8 || ^9 || ^10 || ^11`; harmless on Drupal 11, but a sign of the
  module's age.

Notes:
- Value depends on the **UIkit base theme** being installed — the module supplies components, the
  theme supplies the CSS/JS. Enabling it alone changes little.
- Read `uikit_components.api.php` before writing theme code against it; that is where the intended
  extension points are documented.
