# Installation

## Requirements

- **Drupal 9.3, 10, or 11** (`core_version_requirement: ^9.3 || ^10 || ^11`).
- No other module dependencies and no third-party PHP libraries. (You'll want core's
  contact forms in place, since this module shapes the mail they send.)

## Install with Composer

From the project root:

```bash
composer require drupal/contact_mail -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your
> host machine — `ddev composer require drupal/contact_mail -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en contact_mail -y
```

## Verify it worked

After enabling, open the module's settings form (from **Extend** →
`/admin/modules`, follow the **Configure** link on **Contact Mail**) and confirm
you can set common recipients and the mail formatting. See
[Configuration](../configuration/index.md).
