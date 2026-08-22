# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- **Drush** to run the extraction command (`drush cec`).

There are no third‑party Composer or PHP library requirements, and no module
dependencies.

## Install with Composer

From the project root:

```bash
composer require drupal/classes_extractor -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/classes_extractor -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en classes_extractor -y
```

## Verify it worked

Run the extraction command:

```bash
drush cec
```

It should scan the configured modules and write out a file listing the extracted
CSS classes. You can also confirm the API endpoint responds by requesting
`GET /api/extracted-classes`, which returns the classes as JSON. Next, tune what
gets scanned on the [Configuration](../configuration/index.md) page.
