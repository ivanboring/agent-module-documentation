<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Database Cross-Schema Queries (dbxschema) — agent index

Enables **SQL queries across multiple schemas (PostgreSQL) / databases (MySQL)** via a common DB user with
appropriate permissions. `dbxschema_mysql`/`dbxschema_pgsql` submodules. Version **2.0.0**. Core `^10||^11`.

**Security:** cross-schema access needs a broadly-permissioned DB user — **grant least privilege** (broad
user = bigger blast radius); use **parameterized queries**, never build cross-schema SQL from untrusted
input. No content-access role.
