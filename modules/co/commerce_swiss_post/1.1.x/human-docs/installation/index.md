# Installation

## Requirements

- **Drupal 10.1+ or 11** (`core_version_requirement: ^10.1 || ^11`).
- **Drupal Commerce** with the **Commerce Shipping** stack — Swiss Post is a shipping method
  plugin, so Commerce Shipping must be installed to use it.
- A **Swiss Post account** with API credentials for rates and labels (entered when you
  configure the shipping method).

## Install with Composer

From the project root:

```bash
composer require drupal/commerce_swiss_post -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared dependencies as
needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/commerce_swiss_post -W`, `ddev drush …`. Inside the
> container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en commerce_swiss_post -y
```

## Verify it worked

Go to **Commerce → Configuration → Shipping methods**
(`/admin/commerce/shipping-methods`) and add a shipping method — **Swiss Post** should appear
as a plugin option. See "How to use it" in the [overview](../index.md) for entering your API
credentials and configuring the method.
