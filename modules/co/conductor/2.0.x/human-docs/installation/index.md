# Installation

## Requirements

- **Drupal 11** (`core_version_requirement: ^11`).
- The **Canvas** module (`canvas`) — Writing Assistant surfaces its guidance in
  Canvas.
- The **Key** module (`key`) — used to store the Conductor API credentials
  securely.
- A **Conductor account and API key**. You can obtain a key from
  <https://www.conductor.com/lp/content-insights-drupal/>.

Composer pulls in Canvas and Key as dependencies. There are no third‑party PHP
library requirements.

## Install with Composer

From the project root:

```bash
composer require drupal/conductor -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer install Canvas, Key, and
any other shared dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/conductor -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en conductor -y
```

This also ensures **Canvas** and **Key** are enabled.

## Verify it worked

Open the module's configuration page and confirm it prompts for a Conductor API
key. Once you've stored the key (see [Configuration](../configuration/index.md)),
Conductor's writing/SEO guidance should appear while authoring in Canvas.
