# Installation

## Requirements

- **Drupal 9, 10, or 11** (`core_version_requirement: ^9 || ^10 || ^11`).
- **Commerce** (`commerce`) and **Commerce Payment** (`commerce_payment`) enabled —
  both ship with Drupal Commerce.
- The **Coinbase PHP client library**, installed separately (see below).
- PHP's **cURL** extension — standard on most LAMP hosts. The module checks for it
  and reports an error if it's missing.
- A **Coinbase merchant account** and an API key. Your site should serve **HTTPS**,
  because the callback carries a secret validation value.
- **Cron** running on a schedule, to poll Coinbase for pending‑to‑complete status
  updates.

## Install with Composer

From the project root:

```bash
composer require drupal/commerce_coinbase -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer pull in or update any
shared dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run them from your
> host machine — `ddev composer require drupal/commerce_coinbase -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Install the Coinbase PHP library

The **Coinbase PHP client library** is required as a separate download. Place the
`coinbase-php` files in your libraries directory, e.g.
`sites/all/libraries/coinbase-php/lib` or
`sites/{domain}/libraries/coinbase-php/lib`. The gateway will not function without
it.

## Enable the module

```bash
drush en commerce_coinbase -y
```

## Verify it worked

Go to **Commerce → Configuration → Payment gateways**
(`/admin/commerce/config/payment-gateways`) and confirm you can add the Coinbase
gateway (and that the module isn't reporting a missing library or cURL). Then follow
[Configuration](../configuration/index.md) to enter your API key and webhook secret,
wire the webhook in your Coinbase account, and confirm a test payment completes and
that cron moves it from pending to complete.

> **Note:** this module is minimally maintained and uses Coinbase's deprecated
> Simple API keys. Confirm current Coinbase Commerce API availability before
> depending on it in production.
