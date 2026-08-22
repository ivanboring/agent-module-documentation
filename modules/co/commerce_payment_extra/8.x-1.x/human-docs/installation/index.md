# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10||^11`).
- Drupal Commerce's **Payment** module (`commerce_payment`) enabled — this is the
  only dependency.

There are no third‑party Composer libraries or special PHP extensions required.

## Install with Composer

From the project root:

```bash
composer require drupal/commerce_payment_extra -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update shared dependencies
as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/commerce_payment_extra -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en commerce_payment_extra -y
```

You can also enable it from **Extend** (`/admin/modules`).

## Submodules

Commerce Payment Extra ships one optional submodule:

| Submodule | Machine name | What it adds |
|-----------|--------------|--------------|
| **Commerce Payment Extra Order** | `commerce_payment_extra_order` | Order-related payment behavior built on the base module's expanded API. Enable it if you need its order-side functionality. |

Enable it the same way when you need it:

```bash
drush en commerce_payment_extra_order -y
```

## Verify it worked

There's no settings page to check. Confirm the module is enabled on **Extend**
(`/admin/modules`), then exercise the behavior it adds — for example, move an order
with an authorized payment to *completed* and confirm the payment is captured
automatically, or to *canceled* and confirm the payment is canceled.
