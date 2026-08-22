# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- Core's **Configuration Translation** module (`config_translation`) must be
  enabled.
- **Drush** to use the manual `drush crst` synchronization command.

There are no third‑party PHP library requirements. This is the 1.0.2 release.

## Install with Composer

From the project root:

```bash
composer require drupal/config_translation_sync -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/config_translation_sync -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

Make sure core's Configuration Translation module is enabled first, then:

```bash
drush en config_translation_sync -y
```

## Verify it worked

Run a manual synchronization and confirm it completes:

```bash
drush crst
```

You can also confirm the automatic behaviour by importing configuration (`drush
cim`) on a multilingual site and checking that your configuration translations remain
in place afterwards. The module logs the changes it makes, so review the logs if a
translation does not update as expected.
