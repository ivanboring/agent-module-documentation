<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor 5 Select All (ckeditor5_select_all) — agent index

A pure-YAML CKEditor 5 plugin that adds a **Select All** toolbar button and enables the Ctrl/Cmd+A
shortcut scoped to the editor, by wiring a Drupal toolbar item to the `selectAll.SelectAll` plugin
that already ships with CKEditor 5 in Drupal core. There is no custom PHP class — the definition in
`ckeditor5_select_all.ckeditor5.yml` resolves to core's `CKEditor5PluginDefault`. The `.module` file
is a docblock only; the module has no routes, services, permissions, drush, hooks, config form, or
JavaScript of its own. It is enabled **per text format** through the CKEditor 5 toolbar
drag-and-drop UI, so which editors get the button is a text-format decision, not a site-wide one.
Depends on core `ckeditor5` only; targets `^10 || ^11`.

**Why it is more than a convenience:** Ctrl+A acts on the editor only when focus is already inside
the editing area; click outside and it selects the whole page. A toolbar button removes that
ambiguity and gives pointer-only and assistive-technology users an explicit control for an operation
that otherwise assumes a keyboard.

Facts:
- **Depends on:** `ckeditor5` (Drupal core).
- **Core:** `^10 || ^11`. **Package:** CKEditor 5.
- No settings page (`configure: ''` → null), no permissions, no services, no routes, no drush, no
  hooks, no plugin *types*, no custom JS.

Everything you need (real machine names):
- **CKEditor 5 plugin id:** `ckeditor5_select_all_selectall` (in `ckeditor5_select_all.ckeditor5.yml`).
  It binds the upstream CKEditor 5 plugin `selectAll.SelectAll` (bundled with core, not shipped here).
- **Toolbar item:** `selectall` (label "Select All"); `elements: false` — the plugin adds no HTML
  elements/tags, so no text-format filter changes are needed.
- **Admin library:** `ckeditor5_select_all/admin.selectall` — CSS only (`css/selectall.admin.css`),
  which sets the button icon `icons/marker.svg` on the `.ckeditor5-toolbar-button-selectAll` class.
- **Config schema key:** `ckeditor5.plugin.ckeditor5_select_all_selectall`
  (`config/schema/ckeditor5_select_all.schema.yml`) — an empty mapping; the plugin stores no settings.
- **Use it:** Admin › Configuration › Content authoring › **Text formats and editors** → *Configure*
  a format (e.g. Basic/Full HTML) → drag **Select All** into the CKEditor 5 toolbar → *Save*. Available
  immediately to anyone who can use that format; no cache rebuild required.
- **No security surface.**
