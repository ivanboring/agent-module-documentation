# Installation

> **Before you install:** read the security warning in the
> [main guide](../index.md). This module has a documented account‑takeover flaw
> and should be kept disabled or tightly restricted on any real site until it is
> fixed.

## Requirements

- **Drupal 10.3 or 11** (`core_version_requirement: ^10.3 || ^11`).
- Core's **User** module (`user`) — enabled on every standard Drupal site, and
  pulled in automatically as a dependency.
- A working outbound **mail setup**, since the login code is delivered by email.

There are no third‑party Composer or PHP library requirements.

## Install with Composer

From the project root:

```bash
composer require drupal/email_otp_login -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/email_otp_login -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en email_otp_login -y
```

## Make the login reachable

The module does not add a menu link of its own. To let users start the flow, add
a link to `/otp-email` — for example a custom menu item under **Structure →
Menus** — or link to it from a login block or page.

## Verify it worked

Visit `/otp-email` as an anonymous visitor. You should see a form asking for a
registered email address. Because of the security concerns described in the main
guide, do this only on a test site, and do not expose the flow publicly until the
module enforces attempt‑limiting and code expiry.
