<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Model Documentation (content_model_documentation) — agent index

Documents a site's architecture: a `cm_document` entity for rationale, plus generated,
filterable displays of the live model with Mermaid diagrams. Core requirement `^10 || ^11`.
Settings at `/admin/config/system/cm_document`.

Key facts:
- **Heavy dependency footprint for a documentation tool** — six modules, four contrib:
  `better_exposed_filters ^7.0`, `config_views ~2.1`, `mermaid_diagram_field ~1.0`,
  `views_data_export ^1.5`, plus core `views` and `path_alias`. `config_views` is the load-bearing
  one: it is what exposes configuration entities to Views so the model can be listed at all.
- Two halves, and the distinction matters when explaining it:
  - **generated** — bundles/fields/view modes read from the live site;
  - **authored** — `cm_document` entities holding rationale that introspection cannot recover.
- Permissions are granular: `administer content model documentation`,
  `view content model documentation`, `administer content model document entities`,
  `add content model document entities`, and further CRUD permissions.
- Entity routes use **`_entity_access: 'cm_document.update'`** rather than a bare `_permission`,
  which is the correct pattern (contrast `social_post` in wave 57, which does not).
- `conflict: drush/drush <9.0` in composer.json.
