# Installation

## Requirements

- **Drupal 10.3 or 11** (`core_version_requirement: ^10.3||^11`).
- **Drupal Commerce** (`commerce`) and **Commerce Price** (`commerce_price`).
- Core **User** (`user`) — always present in a standard Drupal install.

There are no additional PHP libraries or third‑party Composer packages to add.

## Install with Composer

From the project root:

```bash
composer require drupal/commerce_account_balance -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer pull in or update any
shared dependencies, including the Commerce packages, as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your
> host machine — `ddev composer require drupal/commerce_account_balance -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en commerce_account_balance -y
```

## Assign the balance permissions

Because a balance behaves like money, decide who may see and change it before you
rely on the feature. Go to **People → Permissions**
(`/admin/people/permissions`) and set:

- **`administer account balances`** — create and adjust balances. Staff/admin
  roles only.
- **`view any account balance`** — see other customers' balances. Staff/admin
  roles only.
- **`view account balance`** — see one's own balance. Safe to grant to
  authenticated customers if you want them to view their credit.

## Verify it worked

Log in as an administrator, open an order under **Commerce → Orders**, and
confirm balance information is shown. If you placed the balance block via
**Structure → Block layout**, a logged‑in customer with `view account balance`
should see their current balance where you positioned it.
