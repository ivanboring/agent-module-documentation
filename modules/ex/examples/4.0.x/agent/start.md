# Examples for Developers — agent index

**This is a developer-example collection, not a production feature module.** The top-level
`examples` module is a stub: it depends on core `toolbar` and implements `hook_toolbar()` to show
an "Examples" tray linking to whichever example submodules are enabled (route map in
`_examples_toolbar_routes()`), plus an "Enable Examples" link. It has no config page (`configure`
null), no permissions, no config schema, no Drush.

All actual value is in the ~30 self-contained tutorial submodules under `modules/`, each teaching
one Drupal core API by richly-commented working code + tests. Enable only the one you want to
study, read its source, then uninstall. Per campaign guidance, these submodules are **not**
documented individually here — read the submodule's own code directly when you need it.

## Submodules (each = one API tutorial)

`action_example`, `ajax_example`, `batch_example`, `block_example`, `cache_example`,
`config_entity_example`, `config_simple_example`, `content_entity_example`, `cron_example`,
`dbtng_example`, `email_example`, `events_example`, `field_example`, `field_permission_example`,
`form_api_example`, `hooks_example`, `image_example`, `js_example`, `menu_example`,
`node_type_example`, `page_example`, `pager_example`, `plugin_type_example`, `queue_example`,
`render_example`, `session_example`, `stream_wrapper_example`, `tabledrag_example`,
`tablesort_example`, `testing_example`, `theming_example`.

Each lives at `web/modules/contrib/examples/modules/<name>/` with its own `.info.yml`, routing,
and `src/`. Names map to the API they demonstrate (e.g. `form_api_example` → Form API,
`plugin_type_example` → defining a custom plugin type).

Key facts:
- Parent module: only `hook_toolbar()` in `examples.module`; shared `DescriptionTemplateTrait`
  renders each example's landing page from a `description.html.twig`.
- Dependency: core `toolbar` (for the tray).
- Not intended to remain enabled on production sites.
