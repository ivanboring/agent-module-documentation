<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Shortcut Menu (shortcut_menu) — agent index

Adds nesting to core's Shortcut module: shortcuts get a parent field and the customise screen
becomes a draggable tree. No config form, no permissions, no schema, no Drush. Requires core
`shortcut`. Installed release **3.0.0-beta8** — beta, schema may still change.

Key facts:
- `hook_entity_base_field_info(EntityTypeInterface $entity_type)` adds the **parent** base field to
  the `shortcut` entity — this is what makes nesting possible, and it means an
  `entity_updates`-style schema change is applied on install.
- `hook_entity_type_build(array &$entity_types)` replaces the shortcut set's customise form class
  with `Drupal\shortcut_menu\Form\ShortcutMenuSetCustomize extends
  Drupal\shortcut\Form\SetCustomize`, giving the drag-and-indent tree UI at
  `/admin/config/user-interface/shortcut/manage/{set}/customize`.
- `ShortcutMenuLazyBuilder extends Drupal\shortcut\ShortcutLazyBuilders` renders the toolbar's
  shortcut list with hierarchy, preserving core's lazy-builder caching.
- `shortcut_menu.libraries.yml` + `css/shortcut_menu.shortcut.css` style the nested list;
  `shortcut_menu.services.yml` registers the lazy builder.
- `hook_help()` on `help.page.shortcut_menu`.

Notes:
- Core shortcut **permissions** (`administer shortcuts`, `customize shortcut links`,
  `access shortcuts`) still apply unchanged — nothing new is introduced.
- Because the parent lives on the shortcut entity, uninstalling the module leaves the field data
  behind; check `shortcut` field storage before removing it from a production site.
- Being a subclass-and-swap approach, another module that also overrides the shortcut set form
  class or the lazy builders will conflict — only one can win in `hook_entity_type_build()`.
