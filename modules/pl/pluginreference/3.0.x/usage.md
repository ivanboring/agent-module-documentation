<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Plugin Reference provides a field type that stores a **soft reference to a plugin** — a plugin ID rather than an entity ID — so content can point at a block plugin, a condition, a formatter or any other plugin type without that plugin being an entity.

---

Drupal's entity reference field is the answer whenever content needs to point at something that is an entity. Plugins are not entities: they are discovered from code, identified by string ID, and have no storage of their own — so referencing one means storing a string and hoping it still exists, with no autocomplete and no validation. This module makes that a proper field. `src/Plugin` supplies the field type, widget and formatter, `src/Element` a form element, and — the interesting part — it defines its own selection-handler plugin type (`PluginReferenceSelectionManager`, `PluginReferenceSelectionBase`, `PluginReferenceSelectionManagerInterface`, using PHP attributes in `src/Attribute`), mirroring how entity reference lets a field narrow which targets are selectable. `PluginTypeHelperInterface` abstracts plugin-type discovery. An autocomplete route at `/pluginreference/autocomplete/{target_type}/{selection_handler}/{selection_settings_key}` backs the widget, correctly gated by a dedicated permission marked `restrict access: true` — appropriate, since the endpoint enumerates the site's available plugins. "Soft" is the important word: nothing guarantees the referenced plugin still exists after a module is removed, so consuming code must handle a missing plugin.

---

- Let editors choose a block plugin from a field.
- Store a reference to a condition plugin.
- Build configuration content that points at plugins.
- Give a field an autocomplete over plugin IDs.
- Narrow selectable plugins with a selection handler.
- Reference a formatter plugin from content.
- Avoid hard-coding plugin IDs in configuration.
- Validate that a chosen plugin exists.
- Build a plugin picker for site builders.
- Reference a custom plugin type.
- Support a rules-style configuration entity.
- Let content drive which plugin runs.
- Write a selection handler to filter plugins.
- Restrict plugin enumeration to trusted users.
- Model a pluggable component chooser.
- Reference a queue worker from configuration.
- Provide a typed alternative to a plain text field.
- Prototype plugin-driven behaviour quickly.
