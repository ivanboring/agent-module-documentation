# Installation

> **⚠️ Before you install:** the shipped version (2.0.4) has an **unauthenticated
> payment webhook** that can be used to fulfil orders without paying, plus public
> debug routes that leak data and can charge your merchant account. It is **not**
> covered by a security advisory. Do not use it on a production store without the
> hardening described in [Configuration](../configuration/index.md). See the
> [overview](../index.md) for the full warning.

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- **Drupal Commerce** with its core, payment, order and checkout modules — the
  module depends on `commerce`, `commerce_payment`, `commerce_order` and
  `commerce_checkout`, enabled automatically as dependencies.
- An **Enzona** merchant account and its API credentials.

## Install with Composer

From the project root:

```bash
composer require drupal/commerce_enzona -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run them from
> your host machine — `ddev composer require drupal/commerce_enzona -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en commerce_enzona -y
```

## Verify it worked

Go to **Administration → Commerce → Configuration → Payment gateways** and click
**Add payment gateway**. If the Enzona plugin appears in the list, the module is
installed. Continue to [Configuration](../configuration/index.md) — and read the
hardening section before exposing the site to the internet.
