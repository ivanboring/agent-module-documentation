<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Migrate Child Entity Generate is a Migrate process plugin that generates child entities (paragraphs, referenced entities) during a migration.

---

Migrating content that has child entities — paragraphs, referenced sub-entities — means creating those children as part of the import. Migrate Child Entity Generate is a process plugin that generates them during a migration. It is developer/CLI migration infrastructure; the migration is authored by a developer and run under Drush, so no request-time security surface. As with any migration, it writes content, so run it as a controlled process.

---

- Generate child entities in a migration.
- Create paragraphs during import.
- Build referenced entities on migrate.
- Handle nested content in migration.
- Use a Migrate process plugin.
- Import content with children.
- Generate sub-entities.
- Run under Drush.
- Author the migration in YAML.
- Migrate structured content.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep setup minimal.
- Verify theme fit.
- Audit access.
- Match your use case.
- Confirm compatibility.