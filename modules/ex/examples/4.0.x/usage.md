Examples for Developers is a collection of ~30 heavily-documented example submodules, each demonstrating one Drupal core API (forms, AJAX, batch, blocks, entities, plugins, queues, theming, etc.) so developers can learn by reading and running working code. The top-level `examples` module itself is just a stub that adds an "Examples" toolbar menu linking to whichever example submodules are enabled.

---

The `examples.module` file is intentionally minimal: it depends only on core `toolbar` and implements `hook_toolbar()` to build an "Examples" tray listing each installed example submodule (via a hard-coded route map in `_examples_toolbar_routes()`) plus an "Enable Examples" link to the Extend page. The real content is in the 30+ submodules under `modules/`, each a self-contained tutorial for a specific subsystem — `form_api_example`, `ajax_example`, `batch_example`, `block_example`, `cache_example`, `config_entity_example`, `content_entity_example`, `cron_example`, `dbtng_example`, `email_example`, `events_example`, `field_example`, `field_permission_example`, `hooks_example`, `image_example`, `js_example`, `menu_example`, `node_type_example`, `page_example`, `pager_example`, `plugin_type_example`, `queue_example`, `render_example`, `session_example`, `stream_wrapper_example`, `tabledrag_example`, `tablesort_example`, `testing_example`, `theming_example`, `action_example`, and `config_simple_example`. Each submodule is enabled independently; there is no global configuration, no permissions on the parent, and no config schema. A shared `DescriptionTemplateTrait` (`src/Utility/`) gives each example a landing page rendered from a Twig `description.html.twig`. This is a learning/reference project — you install the specific example you want to study, read its richly commented code and its automated tests, then uninstall it. It is not intended to be left enabled on production sites.

---

- Learn the Form API by studying and running `form_api_example`.
- See how AJAX callbacks work in Drupal via `ajax_example`.
- Learn the Batch API with `batch_example`.
- Study custom block plugins with `block_example`.
- Understand the Cache API using `cache_example`.
- Learn config entities vs simple config via `config_entity_example` / `config_simple_example`.
- Build a content entity type by example with `content_entity_example`.
- See cron and queue patterns in `cron_example` and `queue_example`.
- Learn the database abstraction layer (DBTNG) via `dbtng_example`.
- Study sending mail with `email_example`.
- Learn event subscribers with `events_example`.
- Create a custom field type/widget/formatter via `field_example`.
- See field-level access control in `field_permission_example`.
- Learn common hooks with `hooks_example`.
- Study image handling/derivatives via `image_example`.
- Attach and use JavaScript with `js_example`.
- Build routed pages/menus with `page_example` and `menu_example`.
- Implement pagers and table sorting with `pager_example` / `tablesort_example`.
- Define a custom plugin type via `plugin_type_example`.
- Learn render arrays with `render_example`.
- Use the session and private tempstore with `session_example`.
- Implement a stream wrapper with `stream_wrapper_example`.
- Build draggable tables with `tabledrag_example`.
- Write PHPUnit/Kernel/Functional tests by example with `testing_example`.
- Theme output (hooks, templates, preprocess) via `theming_example`.
- Define custom actions with `action_example`.
- Create a node type programmatically with `node_type_example`.
- Use the Examples toolbar tray to jump between enabled examples.
- Use the submodules as copy-paste scaffolding for your own custom module.
