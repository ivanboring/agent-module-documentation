<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Clean Maintenance (clean_maintenance) — agent index

**Overrides the core `maintenance_page` template with a custom, cleaner one driven by the site name and the configured maintenance message.**

- **Version:** 2.0.x
- **Core:** ^8 || ^9 || ^10 || ^11
- **Dependencies:** none
- **Mechanism:** `clean_maintenance_theme_registry_alter()` repoints `maintenance_page` to the module's `templates/` path and injects `site_name` + `maintenance_text` (from `system.maintenance` message via `FormattableMarkup`, `@site` token). Skips `system.db_update` so update.php is unaffected.
- **Config:** none of its own; uses core Maintenance-mode settings (`/admin/config/development/maintenance`).
- **Security:** no routes, permissions or services; no user input beyond admin-set config; no anonymous mutating surface.
