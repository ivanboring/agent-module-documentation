# Installation

## Requirements

- **Drupal 10.3+ or 11** (`core_version_requirement: ^10.3||^11`).
- Core's **User** module (always present in a standard install).

There are no third-party Composer or PHP library requirements.

> **Before you install, read the security caution** on the
> [overview page](../index.md). This module lets an account holding only the
> `administer users` permission grant the `administrator` role to everyone — a
> full site takeover. Only enable it if you understand and can contain that risk.

## Install with Composer

From the project root:

```bash
composer require drupal/bulk_update_user_roles -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/bulk_update_user_roles -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en bulk_update_user_roles -y
```

After enabling, restrict who holds `administer users` (see the caution above),
then use the form at `/admin/config/people/bulk-update`.
