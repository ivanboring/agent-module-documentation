# Installation

## Requirements

- **Drupal 10.2 or 11** (`core_version_requirement: ^10.2 || ^11`).
- Core's **File** module (`file`) — enabled in a standard install.
- PHP's Zip support must be available on the server (the module writes zip
  archives).

There are no third‑party Composer or PHP library requirements.

## Install with Composer

From the project root:

```bash
composer require drupal/download_all_files -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/download_all_files -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en download_all_files -y
```

## Caveats to weigh before deploying

A review of the 2.0.2 release surfaced three issues. None blocks basic use, but
each is worth knowing:

- **No field‑level access check.** The download route confirms you may *view the
  entity*, then serves whichever field the URL names. Public‑scheme files are not
  access‑controlled by core, so a field hidden from a user but holding public
  files can still be downloaded by anyone who can view the entity. Put genuinely
  restricted files on the **private** file scheme, and only enable the formatter
  on fields you are happy to expose.
- **Unvalidated field name → 500 error.** Passing a non‑file field name in the
  download URL produces a server error, which an unauthenticated caller could use
  to flood your logs. Keep display of PHP errors off in production and monitor log
  volume.
- **Zips are never cleaned up.** Generated archives are written to a predictable
  temporary path and are not deleted, so they accumulate. Consider a periodic
  cleanup of the temp directory, and ensure your temp path is not inside the public
  files directory.

## Verify it worked

On a content type with a core File field, set the field's display format to
**Table of files with download all link** (see the "How to use it" section of the
[overview](../index.md)). View an entity that has several files attached and click
the "download all" link — you should receive a single zip containing the files.
