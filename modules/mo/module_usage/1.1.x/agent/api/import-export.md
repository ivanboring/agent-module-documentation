<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Import / export data model

Tables (constants in `QueryService`):
- `module_usage` (PK `machine_name`) — name, package, description, version, status, text_format, timestamps.
- `module_usage_activity` (PK `id`) — machine_name, activity_date, current_version, status, event_description (e.g. `Installed`, `Version changed ...`).
- `module_usage_urls` (PK `id`) — machine_name, url, url_description, text_format.
- `module_usage_notes` (PK `id`) — machine_name, note_title, note_text, text_format.

Web import: `module_usage.import` → `/admin/module_usage/import` (ImportForm) accepts a `managed_file` upload to `private://import_files/` restricted to `json`/`txt`, then `Json::decode()`s it and calls `QueryService::doImport()`. Export: `module_usage.export` → `/admin/module_usage/export` streams `module_usage.json`.

Hardening notes for operators:
- The import route requires only `view module_usage` yet performs DB writes/merges — grant `view module_usage` conservatively, or override the route to require `administer module_usage`.
- The AJAX `delete-url`/`delete-note` routes perform deletions via GET without a CSRF token (protected only by `delete module_usage`); treat that permission as trusted-only.

All reads/writes use the Drupal DB API with bound parameters (no string concatenation).