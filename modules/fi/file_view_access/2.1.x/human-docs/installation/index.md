# Installation

## Requirements

- **Drupal 8, 9, 10, or 11** (`core_version_requirement: ^8||^9||^10||^11`).
- Core's **File** module (`file`) — enabled automatically as a dependency.

There are no third-party Composer or PHP library requirements.

> **Before you install, understand the limitation.** This module does **not**
> actually restrict file viewing — public files are still served by the web server
> at their direct URL, and private files are not gated by it. See the
> [overview](../index.md) for the full explanation. If your goal is real protection,
> use Drupal's **private file system** with proper download gating instead of this
> module.

## Install with Composer

From the project root:

```bash
composer require drupal/file_view_access -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update shared dependencies as
needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/file_view_access -W`, `ddev drush …`. Inside
> the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en file_view_access -y
```

## Assign the permission

Grant the **file view access** permission to the appropriate roles at **People →
Permissions** (`/admin/people/permissions#module-file_view_access`). Then enable file
view access on the file fields where you want the option, and mark individual files
during content creation.

## Verify it worked

You'll see the **file view access** permission on the permissions page and the
per-field option on your file fields. Do **not** interpret that as proof your files
are protected — verify real protection by attempting to fetch a "restricted" public
file's direct URL while logged out. If it downloads (it will, for public files), that
confirms why sensitive files belong in the private file system with proper gating
rather than behind this permission.
