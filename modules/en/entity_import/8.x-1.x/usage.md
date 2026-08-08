<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Import imports entities from various sources (CSV, JSON, and others) through a configurable import framework, with a plus submodule adding more source types.

---

Getting external data into Drupal as entities — a product feed, a member list, a content export — recurs across projects. Entity Import provides a configurable framework for it: define an importer, map source fields to entity fields, and import from CSV, JSON or other sources, with `entity_import_plus` adding source types. Because importing **creates and updates entities**, it is a write capability: who may configure and run imports should be trusted, and an import can overwrite existing content, so review mappings and source data before running against production. Treat it like any bulk-write tool — backups and a dry run where possible.

---

- Import entities from CSV.
- Import from JSON.
- Map source fields to entity fields.
- Build a configurable importer.
- Import a product feed.
- Import a member list.
- Update entities from a source.
- Restrict who runs imports.
- Review mappings before import.
- Back up before importing.
- Add source types with the plus submodule.
- Import content in bulk.
- Enable when the feature is needed.
- Keep it disabled otherwise.
- Restrict administration to trusted roles.
- Confirm behaviour on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep the setup minimal.
- Document why it was added.
- Verify it fits your theme.