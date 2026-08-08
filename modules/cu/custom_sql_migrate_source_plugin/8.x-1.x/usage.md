<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom SQL Migrate Source Plugin lets a Migrate migration use an arbitrary SQL query as its source, for importing content from a custom database schema.

---

Migrate's SQL source plugins expect table/column structures; importing from a bespoke legacy database sometimes needs a hand-written SQL query as the source. This plugin provides that: a migration source defined by a custom SQL string. It is developer/CLI infrastructure — the SQL is authored by whoever writes the migration YAML, not by an end user, so it is not an injection surface in the request sense; the responsibility is the developer's to write correct, safe queries against the source database. Migrations run under Drush/admin, and importing content is a write operation, so it belongs to a controlled migration process.

---

- Migrate from a custom SQL query.
- Import from a legacy schema.
- Use a hand-written source query.
- Define a SQL migration source.
- Import content via Migrate.
- Handle a bespoke database.
- Write a custom source plugin.
- Run migrations under Drush.
- Import from a non-standard schema.
- Author safe source SQL.
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
- Audit access to it.
- Match it to your use case.