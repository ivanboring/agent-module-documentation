# Database Info — manual setup guide

**Database Info** (`database_info_schema`) is a schema and metadata explorer for
developers and database administrators. It gives you a real‑time look at the shape
and size of your database: it lists every table, drills into each table to show its
columns (name, data type, maximum length, nullability, key constraints) and
indexes, and reports storage metrics — total database size, per‑table size, and
per‑index size. It is handy for database auditing, onboarding new developers who
need structural context, and performance/capacity planning. It runs on Drupal 10
and 11 with no other module dependencies, and exposes its features through both a
Drush command and a set of admin pages.

> ## Security warning — do not expose this on a public site
>
> As shipped in this release (1.3.1), the module's **web routes are not properly
> protected**, and this needs to be understood before you install it:
>
> - The pages **`/admin/database/info`** and
>   **`/admin/database/table/{tablename}`** are gated only by the core
>   **`access content`** permission. On a standard Drupal site `access content` is
>   granted to the **anonymous** role, so these pages are effectively **open to any
>   anonymous visitor** — meaning anyone on the internet could read the full schema
>   and row counts of every table in your database.
> - The `{tablename}` value from the URL is concatenated **raw** into the SQL that
>   the page runs (`describe $tableName`, `select count(*) from $tableName`), which
>   is a **SQL‑injection** vector.
>
> Because of this, **do not enable this module on a public or production site** in
> its current form. If you must use it, restrict it to a locked‑down local or
> internal environment, and put access controls in front of it — for example gate
> the routes behind a genuine administrative permission and validate/allowlist the
> table name before it is used. Treat the schema and storage details it reveals as
> sensitive operational information.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable it,
   with the access‑control caveat repeated up front.

There is **no configuration form** for this module. The important setup concern is
not a settings page but the access‑control caveat above — read it before enabling
the module anywhere reachable.

## Where it lives in the admin menu

The explorer's pages are at **`/admin/database/info`** (the table inventory) and
**`/admin/database/table/{tablename}`** (per‑table columns, indexes, and row
count). A Drush command exposes the same information from the command line. See the
security warning above regarding who can currently reach these web pages.
