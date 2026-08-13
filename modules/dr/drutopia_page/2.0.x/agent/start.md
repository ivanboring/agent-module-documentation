<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drutopia Page (drutopia_page) — agent index

**Config-only Drutopia feature that installs a Basic 'page' content type (body, summary, paragraphs, meta tags, pathauto) and role permissions.**

- **Version:** 2.0.x
- **Core:** ^10.2 || ^11 || ^12
- **Type:** Features config bundle — no PHP, routes, or services.
- **Installs:** `node.type.page`, `field_body`, `field_summary`, `field_body_paragraph` (ERR→paragraphs), `field_meta_tags`, DS form/view displays (default/full/teaser), `rdf.mapping.node.page`, `pathauto.pattern.node_page`.
- **config/actions:** grant page CRUD permissions to Drutopia `contributor`/`editor`/`manager` roles.
- **Depends on:** drutopia_core, drutopia_seo, ds, paragraphs, entity_reference_revisions, metatag, pathauto, token, node.
- **Security:** no code endpoints; posture is standard node access + the role permissions it grants. No anonymous or mutating custom routes.