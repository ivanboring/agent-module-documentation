<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drupacle is an Oracle Database Connection Tool for Drupal.

---

Drupacle is an **Oracle database connection tool** for Drupal — helping connect to and query an external
**Oracle** database from Drupal (for integrations that must read/write Oracle data). It provides its own
permissions, in the Development package.

Use it to integrate an Oracle database. It is a developer/integration feature. Security handling: it holds
**Oracle database credentials** (host/user/password) — store these as **secrets** (settings.php / env / Key,
not committed config), restrict who can run queries via its permissions, and be careful that any query-building
uses **parameterized queries** (never concatenate user input into SQL) to avoid SQL injection into the Oracle
side. It has no Drupal access-control role beyond its permission. Configure the Oracle connection.

---

- Connect Drupal to Oracle.
- Query an external Oracle database.
- Integrate Oracle data.
- Provide its own permissions.
- Hold Oracle credentials.
- Store credentials as secrets.
- Restrict who can run queries.
- Use parameterized queries (avoid SQL injection).
- Have no Drupal access role beyond permission.
- Configure the Oracle connection.
- Handle Oracle.
- Query Oracle.
- Connect to Oracle.
- Configure the connection.
- Read Oracle data.
- Handle the integration.
- Secure credentials.
- Query external DB.
- Configure credentials.
- Provide Oracle connectivity.
