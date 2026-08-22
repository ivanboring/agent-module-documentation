# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- Core's **Block**, **REST**, and **Serialization** modules — Drupal enables
  these automatically as dependencies when you turn on Exchange Rate.
- A **free or paid API key** from [ExchangeRate‑API](https://www.exchangerate-api.com/).
  Sign up on their site to obtain one before you configure the module.
- Outbound HTTPS access from your web server to ExchangeRate‑API so the module can
  fetch rates. If your environment restricts egress, allow that host.

## Install with Composer

From the project root:

```bash
composer require drupal/exchangerate -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/exchangerate -W`, `ddev drush …`. Inside
> the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en exchangerate -y
```

## Keep your API key out of version control

Treat the ExchangeRate‑API key as a secret. Rather than typing it directly into
committed configuration, store it in an environment variable so it never lands in
your repository. With DDEV you can set one like this:

```bash
ddev dotenv set .ddev/.env --exchangerate-api-key=<your-key>
ddev restart
```

That makes the value available as `EXCHANGERATE_API_KEY` inside the container
(keep `.ddev/.env` out of Git). You then enter the key on the settings form
described in [Configuration](../configuration/index.md); if you manage this key in
several environments, keep the value in each environment's secret store rather
than in exported configuration.

## Verify it worked

Confirm the module is enabled:

```bash
drush pm:list --status=enabled | grep exchangerate
```

Then head to **Configuration → System → Exchange Rate Settings** to enter your API
key, and place a block from **Structure → Block layout** to see live rates render.
Full details are in [Configuration](../configuration/index.md).
