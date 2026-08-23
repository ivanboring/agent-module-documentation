# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- A **Streamshield account** on the Streamshield platform, so you can obtain a
  domain access key and secret to register your site.
- No additional modules or libraries are required.

## Install with Composer

From the project root:

```bash
composer require drupal/streamshield -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/streamshield -W`, `ddev drush …`. Inside
> the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en streamshield -y
```

## Next steps

Once enabled, complete setup in the admin UI (see
[Configuration](../configuration/index.md)):

1. **Register** your site at `/admin/config/streamshield/registration` with your
   Streamshield access key and secret.
2. **Choose content types** at `/admin/config/streamshield/content_types`.
3. Optionally **scan** existing content at `/admin/config/streamshield/scan`.

## A note before going live

Moderation only starts once both the access key and secret are saved and at least
one content type is enabled. Before exposing the site publicly, review the module's
security posture (summarised in the [main guide](../index.md) and detailed in the
module's own security notes): the two `/streamshield/*` endpoints are publicly
reachable and rely solely on the signature check, and the outbound HTTP client
weakens TLS. Store the access and secret keys as secrets.
