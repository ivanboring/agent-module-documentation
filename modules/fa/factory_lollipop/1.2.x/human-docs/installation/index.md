# Installation

## Requirements

- **Drupal 10.5 or 11** (`core_version_requirement: ^10.5 || ^11`). The `1.2.x`
  branch targets modern Drupal; earlier branches exist for Drupal 8.8 (`1.0.0`) and
  Drupal 9 (`1.1.x`).
- Core's **User** module (`user`) — the only dependency, always present in a standard
  Drupal install.

There are no third‑party Composer or PHP library requirements.

## Install with Composer

Because Factory Lollipop is a testing tool with no production role, install it as a
**dev** dependency so it never ships to production:

```bash
composer require --dev drupal/factory_lollipop
```

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require --dev drupal/factory_lollipop`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en factory_lollipop -y
```

## Submodules — optional examples

Two submodules provide worked examples you can enable to learn the framework:

| Submodule | Machine name | What it adds |
|-----------|--------------|--------------|
| **Factory Lollipop Example** | `factory_lollipop_example` | A carefully documented implementation walking through the basic concepts of the factory test framework. |
| **Factory Lollipop Example (Advanced)** | `factory_lollipop_example_advanced` | Examples of more advanced techniques for building Drupal factories. |

Enable one to study its source, for example:

```bash
drush en factory_lollipop_example -y
```

## Verify it worked

Confirm the module is enabled with `drush pm:list --status=enabled | grep
factory_lollipop`. From there, Factory Lollipop is exercised from your test and
setup code rather than the admin UI — write a factory blueprint and instantiate it in
a test to confirm it produces a valid object.
