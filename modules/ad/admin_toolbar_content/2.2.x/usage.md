<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Admin Toolbar Content extends Admin Toolbar's menus with content-oriented entries — jumping straight to a content type's listing or its add form rather than going via `/admin/content` and filtering.

---

Admin Toolbar turns Drupal's toolbar into full drop-downs, which solves navigation for configuration but leaves content where it was: one "Content" link to a filtered listing. For an editor working across a dozen content types that is the wrong shape, and this module reshapes it — expanding the content area of the toolbar with per-type entries and related shortcuts, configurable at `/admin/config/user-interface/admin-toolbar-content` under `administer site configuration`. The extension mechanism is worth noting: `AdminToolbarContentPluginInterface` and `AdminToolbarContentPluginManagerInterface` define a plugin type, so another module can contribute its own toolbar sections rather than the module hard-coding what appears. It depends on both `admin_toolbar` and `admin_toolbar_tools` — the latter is the submodule providing the expanded menus, so this builds on top of that rather than alongside it. Core requirement is `^10.2 || ^11`, and the project is upstream-linted with `phpstan.neon`.

---

- Jump straight to a content type's listing from the toolbar.
- Add content of a specific type in one click.
- Reduce clicks for editors working across many types.
- Give the toolbar a content-oriented structure.
- Show media types alongside content types.
- Contribute custom toolbar sections via a plugin.
- Speed up editorial navigation.
- Configure which content entries appear.
- Improve onboarding for new editors.
- Reach taxonomy vocabularies quickly.
- Complement Admin Toolbar's configuration menus.
- Reduce reliance on /admin/content filters.
- Give a large site a navigable content menu.
- Match the toolbar to an editorial workflow.
- Reach a content type's fields directly.
- Provide shortcuts without the Shortcut module.
- Support editors on a multi-type site.
- Keep toolbar configuration exportable.
