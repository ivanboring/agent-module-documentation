# Installation

## Requirements

- **Drupal 9, 10, or 11** (`core_version_requirement: ^9||^10||^11`).
- Drupal **Commerce** with the **Payment** module (`commerce_payment`) enabled.
- A **Sberbank acquiring** contract, with the username and password for the
  test and live REST APIs (these are different per mode).

There are no additional Composer library or PHP requirements.

> The project states it **should only be installed via Composer** — the archives
> on drupal.org are for reference only.

## Install with Composer

From the project root:

```bash
composer require drupal/commerce_sberbank_acquiring -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your
> host machine — `ddev composer require drupal/commerce_sberbank_acquiring -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en commerce_sberbank_acquiring -y
```

## Verify it worked

Go to **Commerce → Configuration → Payment gateways**
(`/admin/commerce/config/payment-gateways`), click **Add payment gateway**, and
confirm the **Sberbank Acquiring** plugin is offered. Then continue to
[Configuration](../configuration/index.md).
