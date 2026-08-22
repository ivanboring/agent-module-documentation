# Installation

## Requirements

- **Drupal 9, 10, or 11** (`core_version_requirement: ^9 || ^10 || ^11`).
- The **`vlucas/phpdotenv`** PHP library, which reads the `.env` file. Because of
  this Composer dependency you **must install the module with Composer** (not by
  copying files) so the library is pulled in.

## Install with Composer

From the project root:

```bash
composer require drupal/env_variables -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer install `vlucas/phpdotenv`
and update any shared dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your
> host machine — `ddev composer require drupal/env_variables -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en env_variables -y
```

## Lock down access first

Before anyone uses the view page, review who holds the **Access Environment
Variables** permission. As explained in the [guide](../index.md#️-security-warning--this-page-can-expose-secrets)
and [Configuration](../configuration/index.md), the list page can display secret
values, so grant that permission only to fully trusted roles.

## Verify it worked

Go to **Administration → Configuration → Environment Variables**. You should see
the settings form where you configure the `.env` file path. See
[Configuration](../configuration/index.md) for details.
