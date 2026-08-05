<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Plugin Reference (pluginreference) — agent index

Field type storing a **soft reference to a plugin** (a plugin ID, not an entity). Depends on
core `field`. Core requirement `^10.3 || ^11`.

Key facts:
- Defines its own plugin type — **`PluginReferenceSelection`** — mirroring entity reference's
  selection handlers: `PluginReferenceSelectionManager`, `PluginReferenceSelectionBase`,
  `PluginReferenceSelectionManagerInterface`, declared with PHP **attributes**
  (`src/Attribute/`). Write a selection handler to narrow which plugins a field may target.
- `PluginTypeHelperInterface` abstracts plugin-type discovery; `src/Element/` is the form element;
  `src/Plugin/` the field type, widget and formatter.
- Autocomplete route
  `/pluginreference/autocomplete/{target_type}/{selection_handler}/{selection_settings_key}`,
  gated by **`pluginreference autocomplete view results`** — `restrict access: true`, correctly,
  because the endpoint enumerates the plugins available on the site.
- **"Soft" is load-bearing.** The reference is a string; nothing guarantees the plugin still
  exists after a module is uninstalled. Consuming code must handle a missing plugin ID rather
  than assuming `createInstance()` succeeds.
