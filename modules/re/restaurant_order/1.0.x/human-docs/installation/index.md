# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- Core's **Field** (`field`), **User** (`user`) and **Views** (`views`) modules —
  all standard on a Drupal site and enabled automatically as dependencies.

There are no third-party Composer or PHP library requirements. Note the project is a
young `1.0.x` release and is **not covered** by Drupal's security advisory policy.

> **Before you enable this on any reachable site, read the security warning in the
> [main guide](../index.md).** As shipped, the order routes are gated only by the
> `access content` permission (which anonymous users have by default) with no
> controller-level access check, so orders can be listed, viewed and have their
> status changed by unauthenticated visitors. Enable it only in a locked-down or
> non-public environment until you have added real access control.

## Install with Composer

From the project root:

```bash
composer require drupal/restaurant_order -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/restaurant_order -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en restaurant_order -y
```

## Verify it worked

After enabling and clearing caches (`drush cr`), the module's workflow paths (under
`/restaurant/…` and `/restaurant-order/…`) become available. **As part of verifying
the install, check the access posture immediately:** request `/restaurant/orders`
while logged out. If it returns the order list rather than a `403`, the routes are
still open to anonymous visitors and you must add real access control before exposing
the site — see the [main guide](../index.md).
