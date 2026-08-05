<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Content Model Documentation turns a site's architecture into documented, browsable content: a `cm_document` entity type for recording *why* each part of the model exists, alongside generated displays of what it actually is — including Mermaid diagrams of the relationships.

---

Most architecture documentation is a wiki page that was accurate once. This module keeps the two halves together. The generated half reads the live site — bundles, fields, view modes, relationships — using `config_views` to expose configuration entities to Views, Better Exposed Filters for the filtering UI, and `views_data_export` for downloadable output. The authored half is the `cm_document` content entity, one per documented element, holding the rationale that no amount of introspection can recover: why this content type exists, what the field was for, what the migration decided. `mermaid_diagram_field` renders relationship diagrams, and `css/diagram.css`, `sortable.css` and `search-fields-form.css` support those displays. Permissions are granular — `administer content model documentation` for settings, `view content model documentation` for the reports, plus separate create/administer permissions for the document entities — and the entity routes correctly use `_entity_access` rather than a bare permission. Note the dependency weight: six modules, four of them contrib, which is a real commitment for a documentation tool; it is aimed at agencies doing client handovers and at teams maintaining a large model over years. Core requirement is `^10 || ^11`.

---

- Document why each content type exists, not just that it does.
- Hand a site's architecture to a new team.
- Draw a Mermaid diagram of entity relationships.
- Export the content model for a report.
- Record the rationale behind a field.
- Browse bundles and fields as filterable listings.
- Keep architecture notes next to the live model.
- Support a client handover with real documentation.
- Track how the model changed over time.
- Search fields across every bundle.
- Document a migration's decisions.
- Give auditors a view of the data model.
- Explain a legacy field nobody dares delete.
- Publish documentation to a stakeholder role.
- Sort and filter configuration entities in Views.
- Attach diagrams to architecture documents.
- Reduce onboarding time for developers.
- Justify a refactor with documented history.
