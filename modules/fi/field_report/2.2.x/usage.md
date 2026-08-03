Field Report adds a single admin report page that lists every configured field across all entity types and bundles, with label, type, description, which other bundles reuse it, and edit/delete links.

---

Enabling the module (which depends on `field_ui`) exposes one route, `field_report.fields_report` at `/admin/reports/fields/field-report`, gated by the `administer field_report` permission and also shown as a local task/menu link under the Field storage collection. The `FieldReportController::getEntityBundles()` controller iterates all entity type definitions that have a `bundle_entity_type`, then for each bundle collects its `FieldConfig` fields (sorted by the entity form display weight) and builds a table with columns Field Label, Field Type, Field Description, "Also Used In" (other bundles sharing the same field storage, derived from the entity field map), and Options (Edit/Delete links, rendered only when the current user has update/delete access to the field). A few entity types get friendlier headings (Content Types, Media, Comments, Contact Forms, Taxonomy Terms, Blocks, Shortcut Menus). It is a read-only reporting tool — no configuration, no config schema, no Drush, and a small admin CSS library for styling the tables.

---

- See every field on the site grouped by entity type and bundle on one page.
- Identify fields that are missing descriptions or have unclear labels.
- Find fields that are shared across multiple bundles ("Also Used In").
- Spot opportunities to reuse an existing field storage instead of creating new ones.
- Jump straight to a field's edit form from the report.
- Jump straight to a field's delete form from the report.
- Audit field types in use across content types, media, taxonomy, comments, blocks, etc.
- Review the field inventory during a site build or content model review.
- Hand a client or editor a readable overview of the content model.
- Check field naming consistency across bundles.
- Review fields ordered the way they appear on each bundle's form.
- Restrict access to the report via the `administer field_report` permission.
- Use it as a lightweight alternative to exporting config to inspect fields.
- Verify a migration created the expected fields on each bundle.
- Locate every bundle that uses a specific field before deleting it.
