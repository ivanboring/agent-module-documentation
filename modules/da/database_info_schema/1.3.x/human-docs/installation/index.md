# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- No other Drupal module, Composer, or PHP library dependencies.
- **Drush** if you want to use the command‑line output as well as the admin pages.

> ## Read this before enabling
>
> In this release (1.3.1) the web pages **`/admin/database/info`** and
> **`/admin/database/table/{tablename}`** are gated only by the core **`access
> content`** permission — which anonymous users have on a standard site — so they
> are effectively **publicly readable**, exposing your full database schema and row
> counts. In addition, the `{tablename}` URL segment is concatenated **raw** into
> the SQL the page runs, which is a **SQL‑injection** risk. **Do not enable this
> module on a public or production site.** Use it only on a locked‑down local or
> internal environment, and add proper access controls (gate the routes behind a
> real admin permission, validate/allowlist the table name) before relying on it.

## Install with Composer

From the project root:

```bash
composer require drupal/database_info_schema -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/database_info_schema -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en database_info_schema -y
```

Given the access‑control caveat above, only do this on an environment where
anonymous access to `/admin/database/info` is not a concern (a local development
site behind no public network), or after you have added your own access controls.

## Verify it worked

On your protected local environment, visit **`/admin/database/info`**. You should
see the list of database tables; clicking a table shows its columns, indexes, and
row count. If those pages load, the module is working — and this is also your cue
to confirm that they are **not** reachable by anonymous or untrusted users in your
setup.
