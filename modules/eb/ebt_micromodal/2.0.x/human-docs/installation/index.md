# Installation

## Requirements

- **Drupal 10.1, 11, or 12** (`core_version_requirement: ^10.1||^11||^12`).
- **EBT Core** (`ebt_core`) — the shared base for the Extra Block Types family; it
  is the only dependency, and Composer installs it for you.

There are no third‑party PHP or JavaScript library requirements to install
separately — the Micromodal assets ship with the module.

## Install with Composer

From the project root:

```bash
composer require drupal/ebt_micromodal -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update shared dependencies
as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/ebt_micromodal -W`, `ddev drush …`. Inside
> the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en ebt_micromodal -y
```

## Verify it worked

Go to **Content → Blocks → Add content block** (or open Layout Builder) — you should
see the **Micromodal** block type. Add one, set a button label and some modal
content, place it, and confirm that clicking the button on the rendered page opens
the popup.
