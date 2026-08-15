# Installation

## Requirements

- **Drupal 10.1 or 11** (`core_version_requirement: ^10.1 || ^11`).
- No contrib dependencies and no third-party libraries.
- Your site should actually sit behind a reverse proxy whose behaviour you trust
  — this module is not appropriate for a site that is directly reachable by
  clients (see the security note below and in
  [Configuration](../configuration/index.md)).

## Install with Composer

From the project root:

```bash
composer require drupal/trusted_reverse_proxy -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your
> host machine — `ddev composer require drupal/trusted_reverse_proxy -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en trusted_reverse_proxy -y
```

Enabling it is the entire setup — there is no configuration form. The middleware
becomes active immediately.

> **Security:** the moment it is enabled, the module will start trusting
> `x-forwarded-for` on requests that carry it, even if the site is not really
> behind a proxy yet. Do not enable it "for later" on a directly-reachable site.
> Read [Configuration](../configuration/index.md) first.

## Verify it worked

Load a page through your proxy and check that Drupal now sees the correct client
IP (for example in a request log, or via a module that displays the current
user's IP). You can also visit **Reports → Status report**
(`/admin/reports/status`): if a reverse proxy is configured, the
"trusted host patterns" finding will appear as a warning with an explanatory
message rather than as an error.
