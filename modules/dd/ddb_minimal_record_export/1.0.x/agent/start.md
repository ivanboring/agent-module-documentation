<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DDB Minimal Record Export (ddb_minimal_record_export) — agent index

**Maps content-entity fields to the DDB Minimaldatensatz (MDS) and exports LIDO XML (per-entity + bulk).**

- **Version:** 1.0.x (1.0.1)
- **Core:** ^10.2 || ^11
- **Config route:** `ddb_minimal_record_export.settings` → `/admin/config/export/ddb-minimal-record`
- **Permissions:** `administer ddb minimal record` (restrict access — mapping/versions/config+schema export) and `export ddb minimal record` (entity + bulk export/download/delete).
- **Dynamic routes:** per-entity `{canonical}/mrd-export[/download]` added by `Routing\RouteSubscriber`, gated by `_ddb_lido_entity_export` (`Access\EntityExportAccess` — permission + configured type/base-bundle match).
- **Key services:** mds_field_catalog, field_path_resolver, lido_xml_builder, lido_xml_schema_validator (LIDO 1.1 XSD), bulk_export_storage, mapping_version_storage.
- **CSRF:** switch-version and delete-version routes require `_csrf_token: 'TRUE'`.

**Security:** all admin/mapping/config-export/schema-export routes are gated by the restricted `administer ddb minimal record` permission; export/bulk routes by `export ddb minimal record`; per-entity export additionally checks entity type/bundle in `EntityExportAccess`. Version switch/delete are CSRF-protected. **Minor observation:** `BulkExportController::download($export_id)` loads a bulk export by sequential integer id and streams it after only the route permission check — it does not restrict to the export's stored `uid`, so any user holding `export ddb minimal record` could download another user's bulk export by guessing ids (low-risk IDOR among privileged users). No disabled TLS, raw SQL concatenation, or unserialize-on-request-data found.

See [configure/ddb_minimal_record_export.md](configure/ddb_minimal_record_export.md)
