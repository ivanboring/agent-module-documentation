# Installation

## Requirements

- **Drupal 8, 9, 10, or 11** (`core_version_requirement: ^8 || ^9 || ^10 || ^11`).
- The module notes a dependency on **RESTful Web Services** (core's `rest`
  module) for its intended integration.
- No third‑party Composer or PHP libraries.

## Install with Composer

From the project root:

```bash
composer require drupal/entity_view_mode_field_plugin -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your
> host machine — `ddev composer require drupal/entity_view_mode_field_plugin -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en entity_view_mode_field_plugin -y
```

There is no configuration step and no settings page — the module simply makes the
view-mode field plugin available.

## Verify it worked

Confirm the module is enabled with `drush pm:list --status=enabled | grep
entity_view_mode_field_plugin`. The entity's view mode is then available as a
field where you configure entity fields, displays, or serialized output.
