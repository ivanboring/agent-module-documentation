# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- The **Project Browser** module (`project_browser`) — this module adds a source to
  it, and Drupal enables it as a dependency.

There are no third‑party Composer or PHP library requirements. This is an **alpha**
release and the project is **not covered** by Drupal's security advisory policy, so
try it on a non-production copy first and keep it restricted to trusted
administrators.

## Install with Composer

From the project root:

```bash
composer require drupal/commerce_project_browser -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/commerce_project_browser -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en commerce_project_browser -y
```

Enabling it also enables Project Browser if it is not already on.

## Verify it worked

Go to **Extend → Browse** (`/admin/modules/browse`). You should be able to find
Commerce recipes through the source this module adds, and install one via Project
Browser's normal workflow. Because installing recipes adds code to your site, make
sure only trusted administrators have access to this workflow.
