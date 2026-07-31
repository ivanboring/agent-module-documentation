# Smart Title UI — agent index

Optional admin submodule for **Smart Title**. It is a single settings form; it renders no
titles itself. See the parent module for how titles are configured and stored:
[../../../../1.0.x/agent/configure/smart-title.md](../../../../1.0.x/agent/configure/smart-title.md).

Key facts:

- **Configure route:** `smart_title_ui.settings` → `/admin/config/content/smart-title`.
- **Permission:** `administer smart title` ("Manage Smart Title configuration").
- The form (`SmartTitleConfigForm`, extends `ConfigFormBase`) shows a checkbox per bundle
  for every content entity type whose label is not already display-configurable, grouped by
  entity type.
- **Saving** writes the selected `entity_type:bundle` list into the parent config
  `smart_title.settings.smart_title`, unsets Smart Title third-party settings on displays of
  any bundle that was unchecked, and invalidates the `entity_field_info` cache tag.
- Stores **no config of its own**; safe to disable once bundles are chosen.
