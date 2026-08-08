<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Database Cross-Schema Queries enables SQL queries between multiple schemas (PostgreSQL) or databases (MySQL) using a common user account with appropriate permissions.

---

Database Cross-Schema Queries (dbxschema) enables SQL queries that span multiple database schemas
(PostgreSQL) or multiple databases (MySQL) — so Drupal code can query across schema/database boundaries,
using a common database user account that has the appropriate permissions on all the schemas/databases
involved. It ships `dbxschema_mysql` and `dbxschema_pgsql` submodules for the respective databases.

Use it where an application legitimately needs to query across schemas/databases from Drupal. This is a
developer/database feature with real security considerations: cross-schema access requires a DB user with
broad permissions across schemas — **grant that user only the minimum access needed** (least privilege),
because a widely-permissioned DB user increases blast radius if the app or a query is compromised (e.g. via
SQL injection in code that builds cross-schema queries). Use parameterized queries and never build
cross-schema SQL from untrusted input. It has no content-access role. Configure the schema/database access.

---

- Query across database schemas.
- Query multiple databases (MySQL).
- Query multiple schemas (PostgreSQL).
- Use a common DB user account.
- Ship mysql/pgsql submodules.
- Grant the DB user least privilege.
- Never build cross-schema SQL from untrusted input.
- Use parameterized queries.
- Mind the blast radius of a broad DB user.
- Have no content-access role.
- Query across boundaries.
- Configure schema access.
- Support cross-database queries.
- Restrict DB permissions.
- Query legitimately across schemas.
- Avoid SQL injection in cross-schema code.
- Configure the DB user.
- Handle cross-schema access.
- Use minimum DB permissions.
- Query cross-schema safely.
