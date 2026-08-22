# Installation

## Requirements

- **Drupal 10.4 or 11** (`core_version_requirement: ^10.4 || ^11`).
- No hard Drupal module dependencies are declared, and no separate PHP or
  third‑party Composer library is required by the module itself.
- Access credentials for the external **DXP assistant** service you are connecting
  to. Store these as a secret (see below) — do not paste them into version control.

## Install with Composer

From the project root:

```bash
composer require drupal/dxp_assistant -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/dxp_assistant -W`, `ddev drush …`. Inside
> the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en dxp_assistant -y
```

## Store the API credentials securely

If your DXP assistant needs an API key or token, keep it out of code and config. On
DDEV, save it as an environment variable and restart so the container picks it up:

```bash
ddev dotenv set .ddev/.env --dxp-api-key=<value>
ddev restart
```

Never commit `.ddev/.env`. Where the integration supports it, reference the value
through a **Key** entity (install `drupal/key` if needed) rather than storing the raw
secret in configuration.

## Verify it worked

Confirm the module is enabled (`drush pm:list --status=enabled | grep dxp_assistant`),
then grant its permission to the appropriate roles under **People → Permissions**.
Because this is an early work‑in‑progress release, check the project page for the
current steps to confirm the assistant is connecting to your DXP service.
