<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Custom SQL Migrate Source Plugin (custom_sql_migrate_source_plugin) — agent index

Migrate **source defined by a custom SQL string** — for importing from bespoke schemas.
Version **8.x-1.5**. Developer/CLI infrastructure; the SQL is migration-YAML-authored (not
user input), run under Drush/admin. Write correct, safe queries against the source DB.