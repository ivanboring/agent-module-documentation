# Drupacle — manual setup guide

**Drupacle** (`drupacle`) is a tool for connecting Drupal to an **Oracle**
database. You give it connection details for an Oracle database, and it generates
a reusable "Oracle database object" (referenced by a short‑code) that your code
can use to talk to that database through PHP's OCI8 functions. It supports
connecting to **multiple** Oracle databases, which makes it handy for integrations
that must read from or write to Oracle systems alongside your normal Drupal
database.

Using it is a three‑step flow, per the project page: install and enable the OCI8
Oracle driver on the server; create a Drupacle connection under
**/admin/drupacle/connections**; then copy the generated short‑code and use it in
your code to run queries against Oracle.

Because it stores database credentials and executes queries, treat Drupacle with
care. It provides its own permission to gate who can manage connections and run
queries — keep that restricted to trusted users. Store the Oracle credentials as
**secrets** (via environment variables / a Key entity / `settings.php`) rather than
committing them to exported configuration, and always build queries with
**parameterized queries** — never concatenate user input into SQL — to avoid SQL
injection into the Oracle side. It has no Drupal access‑control role beyond its own
permission.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the OCI8 driver, install with
   Composer, and enable the module.
2. [Configuration](configuration/index.md) — create and manage Oracle connections,
   and how to handle credentials safely.

## Where it lives in the admin menu

Drupacle's connection manager lives at **/admin/drupacle/connections**, where you
create and manage the Oracle database connections. See
[Configuration](configuration/index.md) for the full walkthrough.
