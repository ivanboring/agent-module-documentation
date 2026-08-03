# Field Report — agent index

Single read-only admin report listing all configured fields by entity type/bundle. No config
page, no config schema, no Drush. Depends on `field_ui`.

- Route `field_report.fields_report` → **`/admin/reports/fields/field-report`**, permission
  **`administer field_report`**. Also a local task/menu link under the field storage collection.
- Controller `FieldReportController::getEntityBundles()` walks entity types with a
  `bundle_entity_type`, gathers each bundle's `FieldConfig` fields (sorted by form-display
  weight), and renders a table per bundle: Field Label, Field Type, Field Description, "Also
  Used In" (other bundles sharing the storage, from `EntityFieldManager::getFieldMap()`),
  Options (Edit/Delete links shown only if the user has `update`/`delete` access to the field).
- No solution docs needed — the module is one page with one permission and no settings.
