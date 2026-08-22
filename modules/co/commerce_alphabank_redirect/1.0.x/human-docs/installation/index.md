# Installation

## Requirements

- **Drupal 9, 10, or 11** (`core_version_requirement: ^9||^10||^11`).
- **Drupal Commerce** (`commerce`) and **Commerce Payment**
  (`commerce_payment`).
- An **Alpha Bank (Greece) merchant account** providing a merchant ID and a shared
  secret for the redirect integration.

There are no extra PHP or third‑party library requirements. (Only the older Drupal 7
version depended on the separate Commerce Static Checkout URL module; that isn't
needed here.)

## Install with Composer

From the project root:

```bash
composer require drupal/commerce_alphabank_redirect -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update shared dependencies
as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your
> host machine — `ddev composer require drupal/commerce_alphabank_redirect -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en commerce_alphabank_redirect -y
```

## Store your shared secret as a secret

The Alpha Bank **shared secret** is the whole basis of trust for verifying
callbacks, so treat it as a secret and keep it out of version control. With DDEV,
save it as an environment variable and expose it through a Key entity:

```bash
ddev dotenv set .ddev/.env --alphabank-shared-secret=<value>
ddev restart
```

Then create a Key entity (install the Key module first if needed with
`ddev composer require drupal/key && ddev drush en key -y`) using the env provider
and reference it from the gateway configuration.

## Verify it worked

Continue to [Configuration](../configuration/index.md) to add the Alpha Bank
gateway. In the bank's test environment, place an order, complete payment on Alpha
Bank's hosted page, and confirm the payment is recorded as completed against the
order on return.
