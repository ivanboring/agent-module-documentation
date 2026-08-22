# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- Core's **Comment** module enabled, since this builds on the core comment system.

There are no third‑party Composer or PHP library requirements. This release is
marked *not covered* by Drupal's security advisory policy.

## Install with Composer

From the project root:

```bash
composer require drupal/comment_tracker -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/comment_tracker -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en comment_tracker -y
```

## Verify it worked

Once enabled, the module records comment views automatically. Review the
permission(s) it adds at **People → Permissions**
(`/admin/people/permissions`). Bear in mind that per‑view tracking can interact
with page caching and has privacy implications — confirm this fits your site's
caching setup and data‑handling policies before relying on it on a busy site.
