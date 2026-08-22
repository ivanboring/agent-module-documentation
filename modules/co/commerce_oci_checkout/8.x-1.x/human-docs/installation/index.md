# Installation

## Requirements

- **Drupal 10.1+ or 11** (`core_version_requirement: ^10.1 || ^11`).
- Drupal **Commerce** (`commerce`) and **Commerce Cart** (`commerce_cart`) enabled
  — these are the module dependencies.
- A **buyer procurement system** that speaks OCI (SAP SRM, ORDIGES, Microsoft
  Dynamics AX, SAP Ariba, etc.) and the shared credentials to authenticate the
  punch-out exchange with it.

There are no additional third‑party Composer or PHP library requirements.

## Install with Composer

From the project root:

```bash
composer require drupal/commerce_oci_checkout -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/commerce_oci_checkout -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en commerce_oci_checkout -y
```

Commerce and Commerce Cart are enabled automatically as dependencies.

## Verify it worked

After enabling, review the module's permissions at **People → Permissions**
(`/admin/people/permissions`) and grant the OCI permissions to the roles that will
operate the integration. Then coordinate the punch-out credentials and catalog
mapping with the buyer's procurement system, and test a punch-out session end to
end — the cart should be handed back to the procurement system rather than proceeding
to payment on your site.
