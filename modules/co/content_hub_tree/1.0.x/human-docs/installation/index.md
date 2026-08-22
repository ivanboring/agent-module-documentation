# Installation

## Requirements

- **Drupal 8.9, 9, 10, or 11** (`core_version_requirement: ^8.9||^9||^10||^11`).
- Core's **Menu Link Content** module (`menu_link_content`) — this is the required
  dependency, since the tree is built from menu links.
- No third‑party Composer or PHP library requirements.

This release is an early **beta** (1.0.0‑beta2); test it before relying on it in
production.

## Install with Composer

From the project root:

```bash
composer require drupal/content_hub_tree -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/content_hub_tree -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en content_hub_tree -y
```

Enabling Content Hub Tree also enables **Menu Link Content** as its dependency if it
isn't already on.

## Verify it worked

Make sure you have a menu whose links reference the content you want to browse (build
or review one at **Structure → Menus**, `/admin/structure/menu`). Then open the
content tree and confirm it renders your content in the same hierarchy as that menu.
Because the tree respects access, log in as a less‑privileged user to confirm it only
shows content that user can see.
