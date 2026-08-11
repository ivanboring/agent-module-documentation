<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
A UI to export and sanitize the database.

---

Database Export UI provides a database export and sanitization UI — letting an administrator export the site database (optionally sanitized, stripping/obfuscating sensitive data) from the admin interface, useful for making shareable/dev copies of the database.

Security: the export page (`/admin/config/development/db-export`) is gated by a dedicated `administer db exports` permission — restrict it tightly, since a database export can contain sensitive data even after sanitization; keep exported files out of web-accessible paths. Depends on core `system`; supports Drupal 10.3+ and 11.

---

- Export the database from a UI.
- Sanitize the export.
- Strip/obfuscate sensitive data.
- Make shareable/dev copies.
- Gate with `administer db exports`.
- Restrict the permission tightly.
- Keep exports out of web paths.
- Depend on core `system`.
- Support Drupal 10.3+ and 11.
- Aid developers/ops.
- Handle DB exports.
- Sanitize data
- Support Drupal.
- Support Drupal.
- Support Drupal.
