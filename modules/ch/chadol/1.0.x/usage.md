<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Chado Light (chadol) interfaces Chado biological databases via External Entities.

---

Chado Light (chadol) **interfaces Chado biological databases** — exposing data from a Chado schema (the GMOD
biological/genomics database schema) as Drupal External Entities so it can be viewed and referenced without
importing it, part of the Tripal ecosystem. It depends on External Entities (and its SQL/Postgres schema
submodules), provides its own permissions.

Use it to surface Chado data in Drupal. It is a data-integration/developer feature aimed at bioinformatics sites.
Data-handling note: it reads from an **external/secondary database** (the Chado DB) — connection credentials for
that database must be configured as secrets (settings.php/env), and expose only intended records. It has no broad
access-control role beyond its permission. Configure the Chado database connection.

---

- Interface Chado biological databases.
- Expose Chado data as External Entities.
- Serve the Tripal ecosystem.
- Depend on External Entities (+ SQL schema).
- Provide its own permissions.
- Read from a Chado schema.
- Read an external/secondary database.
- Store the Chado DB credentials as secrets (settings.php/env).
- Expose only intended records.
- Have no broad access-control role beyond permission.
- Configure the Chado connection.
- Handle Chado data.
- Expose Chado.
- Configure the connection.
- Read Chado.
- Handle the integration.
- Surface genomics data.
- Reference Chado records.
- Secure the DB credentials.
- Provide Chado interfacing.
