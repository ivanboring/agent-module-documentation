# Installation

## Requirements

- **Drupal 10.1 or 11** (`core_version_requirement: ^10.1||^11`).
- Eudonet CRM **API access and credentials** (obtained from your Eudonet
  environment).

There are no contrib module dependencies listed, and no third‑party PHP library
requirements.

## Install with Composer

From the project root:

```bash
composer require drupal/eudonet -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/eudonet -W`, `ddev drush …`. Inside the
> container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en eudonet -y
```

## Provide credentials as secrets

Before your integration can talk to Eudonet, supply the API credentials as
environment‑backed secrets rather than in configuration — see the "How to use it"
section of the [overview](../index.md) for the DDEV dotenv + Key approach.

## Verify it worked

Confirm the module is enabled (**Extend**, or `drush pml | grep eudonet`). Since it
is a client library, the real test is whether your integration code (or a dependent
module) can successfully authenticate and make a call against the Eudonet API using
the credentials you provided.
