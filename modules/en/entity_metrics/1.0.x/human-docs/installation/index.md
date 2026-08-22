# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- The **Key** module (`key`) — used to store the IP2Location API key securely.
  Composer installs it automatically when you require Entity Metrics.
- An **IP2Location** API key, if you want the geolocation features.
- No third-party PHP or JavaScript libraries.

> **Heads-up:** this is a **beta** release.

## Install with Composer

From the project root:

```bash
composer require drupal/entity_metrics -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer install Key and update any
shared dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/entity_metrics -W`, `ddev drush …`. Inside
> the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en entity_metrics -y
```

Drupal enables the Key module at the same time if it isn't already on.

## Post-installation: create the IP2Location key

Entity Metrics expects a Key named **`ip2location`** that holds your IP2Location
API key. Rather than pasting the key into configuration, store it as an environment
variable and back the Key with the environment provider — the same pattern this
project uses for other API credentials.

At a high level:

1. Store the API key in an environment variable (for example via DDEV:
   `ddev dotenv set .ddev/.env --ip2location-api-key=<value>`, then `ddev restart`
   — never commit `.ddev/.env`).
2. Create the Key entity named `ip2location`, using Key's environment provider so
   Drupal reads the value from that variable. You can do this in the UI at
   **Configuration → System → Keys → Add key**, or with `drush key:save`.

If you don't need the geolocation features, view/download counting still works
without the key.

## Verify it worked

Confirm the module is enabled (`drush pml --status=enabled | grep entity_metrics`)
and that a Key named `ip2location` exists at **Configuration → System → Keys**.
View some content and confirm view/download counts begin accumulating for entities,
visible to users who hold the module's view permission.
