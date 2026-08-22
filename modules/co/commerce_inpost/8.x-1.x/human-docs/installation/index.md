# Installation

## Requirements

Commerce InPost needs a working Drupal Commerce store with shipping enabled:

- **Drupal 8, 9, 10, or 11** (`core_version_requirement: ^8||^9||^10||^11`).
- **Commerce** (`commerce`) — the core Drupal Commerce module.
- **Commerce Shipping** (`commerce_shipping`) — provides the shipping-method
  framework this module plugs into. Drupal enables it as a dependency when you
  turn on Commerce InPost.
- An **InPost account** with **API credentials** for the environment you intend
  to use (test or live).

There are no additional third‑party PHP libraries to install.

> **Note:** This is a beta release (`8.x-1.0-beta2`) and the project is marked
> as *not covered* by Drupal's security advisory policy. Test it thoroughly on a
> staging environment before using it on a production storefront.

## Install with Composer

From the project root:

```bash
composer require drupal/commerce_inpost -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer pull in and update
shared dependencies (Commerce, Commerce Shipping) as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your
> host machine — `ddev composer require drupal/commerce_inpost -W`, `ddev drush
> …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en commerce_inpost -y
```

This also enables Commerce Shipping if it is not already on.

## Verify it worked

Go to **Administration → Commerce → Configuration → Shipping methods**
(`/admin/commerce/config/shipping-methods`) and click **Add shipping method**.
In the shipping method plugin list you should now see **InPost** as an available
option. That confirms the module is installed and ready to configure — head to
[Configuration](../configuration/index.md) to enter your credentials.
