<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Display information about your database model (tables, columns, row counts).

---

Database Info (Database Info Drush Command) displays information about your database model — a Drush command and admin pages that list the database's tables and, per table, its columns (name/type/null/key) and total row count, useful for developers inspecting the schema.

**Security warning (as shipped, 1.3.1):** the web routes `/admin/database/info` and `/admin/database/table/{tablename}` are gated by only `_permission: 'access content'` (anonymous on a standard site), and `{tablename}` is concatenated **raw** into `describe $tableName` / `select count(*) from $tableName` queries — so any anonymous visitor can read the full schema and row counts of every table, and the raw concatenation is a SQL-injection vector. **Do not expose this on a public site**; gate the routes behind an admin permission and validate/allowlist the table name before using it. Supports Drupal 10 and 11.

---

- Show database schema info.
- List tables and columns.
- Show per-table row counts.
- Provide a Drush command + admin pages.
- WARNING: web routes use `access content` (anonymous).
- WARNING: `{tablename}` is raw-concatenated into SQL (injection).
- Expose schema/row counts unauthenticated.
- Require gating behind an admin permission.
- Need table-name validation/allowlisting.
- Not be exposed on a public site.
- Support Drupal 10 and 11.
- Inspect the database
- Support Drupal.
- Support Drupal.
- Support Drupal.
