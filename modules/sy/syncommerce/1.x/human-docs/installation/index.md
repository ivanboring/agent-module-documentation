# Installation

## Requirements

SynCommerce needs:

- **Drupal 9, 10 or 11** (`core_version_requirement: ^9 || ^10 || ^11`).
- **Drupal Commerce** (`commerce`) — the module reads and writes Commerce
  products and variations.

The product listing and editing assume the usual Commerce product/variation
setup, including fields such as an article field, a catalog term reference, an
old-price field and a stock field that the endpoints read and write.

There are no third-party PHP library dependencies listed.

## Install with Composer

From the project root:

```bash
composer require drupal/syncommerce -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer pull in Commerce and any
shared dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your
> host machine — `ddev composer require drupal/syncommerce -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en syncommerce -y
```

## Important: restrict the routes before real use

Enabling the module immediately exposes `/syncommerce/products` and its three JSON
endpoints, and by default they are reachable by anyone — including anonymous
visitors — because they only require the `access content` permission. The two
mutating endpoints can change product and variation data with no admin check and
no CSRF token. **Do not leave this open.** Before using SynCommerce on a live
site, lock the routes down to a real Commerce-admin permission (for example by
overriding the route access in a small custom module), so only trusted editors
can reach the editing screen and its endpoints.

## Verify it worked

Once you have restricted access, open **`/syncommerce/products`** as an
authorised editor. You should see the product editing screen, be able to filter
the catalog, and edit product and variation fields inline. Confirm that an
unauthenticated visitor is now blocked from both the page and the endpoints.
