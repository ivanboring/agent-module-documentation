# Installation

## Requirements

Colorizer Classes is deliberately lightweight. It needs:

- **Drupal 9, 10, or 11** (`core_version_requirement: ^9||^10||^11`).

There are no other module dependencies and no third‑party Composer or PHP library
requirements. It pairs naturally with a colour‑picker module such as
[Color Field](https://www.drupal.org/project/color_field), but that is optional.

## Install with Composer

From the project root:

```bash
composer require drupal/colorizer_classes -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/colorizer_classes -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en colorizer_classes -y
```

## Verify it worked

There is nothing to click — the module simply makes the `colorizer` Twig filter
available. To confirm it is working, add `{{ '#FFFFFF'|colorizer }}` to a template
and rebuild caches (`drush cr`); it should render `color-white`. See the "How to
use it" section on the [overview page](../index.md) for the filter in context.
