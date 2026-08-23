# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`, with the project's
  supported core range extending up to Drupal 12).
- No other module dependencies, and no additional PHP or library requirements.

## Install with Composer

From the project root:

```bash
composer require drupal/speedboxes -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/speedboxes -W`, `ddev drush …`. Inside
> the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en speedboxes -y
```

That is all it takes — the drag-to-toggle behaviour is active immediately on
checkbox grids across the admin UI. There is no configuration.

## Verify it worked

Go to **People → Permissions** (`/admin/people/permissions`). Left-click and drag
the mouse across a run of checkboxes; a small toolbar should appear letting you
check, uncheck or invert the selection. Remember to review the resulting role
before saving, since the permissions grid controls site access.
