# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- **Commerce Payment** (`commerce_payment`) enabled — it ships with Drupal
  Commerce.
- A **Chase Paymentech / Orbital merchant account**, configured for **IP‑based SOAP
  authentication** (your server's public IP must be whitelisted with Chase).
- An HTTPS checkout and a PCI‑compliant hosting setup, since this handles card
  payments.

There are no third‑party Composer or PHP library requirements listed. Note the
current release is an **alpha** — pin the version and test carefully.

## Install with Composer

From the project root:

```bash
composer require drupal/commerce_chase -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer pull in or update any
shared dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run them from your
> host machine — `ddev composer require drupal/commerce_chase -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en commerce_chase -y
```

## Verify it worked

Go to **Commerce → Configuration → Payment gateways**
(`/admin/commerce/config/payment-gateways`) and confirm you can add the Chase
(Orbital) gateway. Because SOAP authentication is IP‑based, also confirm with Chase
that your server's outbound IP is whitelisted, then run a test transaction before
going live. Follow [Configuration](../configuration/index.md) for the credential
and safeguard details.

> **Note:** this module is minimally maintained and the current release is an alpha.
> Test thoroughly and keep it updated.
