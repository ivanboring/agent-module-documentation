# Installation

## Requirements

- **Drupal 10.1 or 11** (`core_version_requirement: ^10.1 || ^11`).
- The **Stripe PHP library**, installed via Composer — required to accept
  payments.
- No core module dependencies are declared, but you will need Stripe API keys
  configured (see [Configuration](../configuration/index.md)) before payments
  work.

This project is an early **alpha** (`1.0.0-alpha4`) and is **not covered by
Drupal's security advisory policy**. Treat it as work in progress and test
thoroughly before running a live event on it.

## Install with Composer

From the project root:

```bash
composer require drupal/conreg -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed. Composer will also bring in the Stripe PHP library that
ConReg requires.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/conreg -W`, `ddev drush …`. Inside the
> container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en conreg -y
```

## Verify it worked

After enabling, ConReg's registration and management functionality is available,
but it is **not yet ready to take sign‑ups** — you still need to create a
convention record and configure payment keys. Continue to
[Configuration](../configuration/index.md) for those post‑install steps.
