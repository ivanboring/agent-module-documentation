# Installation

## Requirements

- **Drupal 9, 10, or 11** (`core_version_requirement: ^9 || ^10 || ^11`).
- The **`google/apiclient`** PHP library (v2) — used to talk to the Google Analytics
  API. When you install this module with Composer, the library is pulled in
  automatically.
- A **Google Analytics (GA4)** property and **API credentials** with access to its
  reporting data.
- A working **cron** on the server, so the counts refresh periodically.

## Install with Composer

From the project root:

```bash
composer require drupal/easy_google_analytics_counter -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed, and this also brings in the `google/apiclient` library.

> If you install the module some other way (not via Composer), add the library
> manually from the **project** root (not the module folder):
> `composer require "google/apiclient":"^2.0"`.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/easy_google_analytics_counter -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en easy_google_analytics_counter -y
```

Enabling the module adds the `pageview` column to `node_field_data`.

## Keep your Google credentials secret

The credentials that let Drupal read your Google Analytics data are sensitive —
**never commit them to version control.** Store secret values (such as an API key or
service‑account details) in an environment variable via DDEV's dotenv command, for
example:

```bash
ddev dotenv set .ddev/.env --google-analytics-credentials=<value>
ddev restart
```

Keep `.ddev/.env` out of version control, and reference the value from configuration
rather than pasting a raw secret where it might be exported or logged.

## Verify it worked

Go to `/admin/config/easy_google_analytics_counter/admin` and confirm the settings
form loads. Then follow [Configuration](../configuration/index.md) to connect to
Google Analytics and start pulling in counts.
