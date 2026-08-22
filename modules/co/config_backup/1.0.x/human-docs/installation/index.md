# Installation

## Requirements

- **Drupal 8, 9, 10, or 11** (`core_version_requirement: ^8 || ^9 || ^10 || ^11`).
- Core's **Configuration Manager** module (`config`) — the only dependency,
  enabled automatically.

There are no third‑party PHP library requirements.

## Install with Composer

From the project root:

```bash
composer require drupal/config_backup -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/config_backup -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en config_backup -y
```

After enabling, review the module's permissions under **People → Permissions** and
grant backup/restore rights only to trusted administrators — backups can contain
sensitive values.

## Verify it worked

Open the Config Backup admin area (see [Configuration](../configuration/index.md))
and create a test backup, or run the module's Drush command. Confirm a
configuration snapshot is produced.

> **Tip:** The module ships a `README.md` with the most complete, up-to-date
> documentation — worth a look for any additional details.
