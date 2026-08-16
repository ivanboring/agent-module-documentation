# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- No other module dependencies and no third‑party PHP libraries.

## Install with Composer

From the project root:

```bash
composer require drupal/browser_back_button -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/browser_back_button -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en browser_back_button -y
```

Before relying on it site‑wide, read the guidance in
[the overview](../index.md): scope its effect to the pages whose state cannot
survive a Back‑button restoration, and prefer a `Cache-Control: no-store` header
where you control it.
