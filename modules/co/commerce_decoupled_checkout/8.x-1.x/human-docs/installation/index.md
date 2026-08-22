# Installation

## Requirements

- **Drupal 9, 10, or 11** (`core_version_requirement: ^9 || ^10 || ^11`).
- **Drupal Commerce** (`commerce`) enabled — this is the module dependency.
- A configured Commerce **payment gateway** for whichever provider your front end
  will use (the module has been used with PayPal, Stripe, Global Payments, and
  Direct Debits).

There are no third‑party Composer or PHP library requirements.

## Install with Composer

From the project root:

```bash
composer require drupal/commerce_decoupled_checkout -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your
> host machine — `ddev composer require drupal/commerce_decoupled_checkout -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en commerce_decoupled_checkout -y
```

## Verify it worked

Once enabled, the REST endpoints (for example `POST /commerce/order/create`) are
available. Before pointing a real front end at them, review the **security**
guidance in the [overview](../index.md) — particularly keeping prices
server‑authoritative and scoping each caller to their own order — since the module
does not enforce those for you.
