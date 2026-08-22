# Installation

## Requirements

- **Drupal 10.1 or 11** (`core_version_requirement: ^10.1 || ^11`).
- Core's **CKEditor 5** editor (it enhances CKEditor 5's built‑in Remove Format
  plugin).
- No other module dependencies, and no third‑party Composer or PHP library
  requirements.

> **Heads‑up:** This project is maintained for fixes only and is **not covered by
> the Drupal security advisory policy**. Weigh that for production use.

## Install with Composer

From the project root:

```bash
composer require drupal/ckeditor_remove_format -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your
> host machine — `ddev composer require drupal/ckeditor_remove_format -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en ckeditor_remove_format -y
```

## Add the button and, optionally, the filter

1. Go to **Configuration → Content authoring → Text formats and editors**
   (`/admin/config/content/formats`) and edit a format that uses **CKEditor 5**.
2. In the CKEditor 5 toolbar configuration, add the **Remove Format** button to
   the toolbar so editors can clear formatting from a selection.
3. If you want formatting stripped automatically whenever content is saved, enable
   the **Remove Format Filter** on the same format's **Filters** list.
4. Save the text format.

## Verify it worked

Edit a content field using that format, apply some inline formatting to a
selection, click **Remove Format**, and confirm it is stripped. If you enabled the
filter, save content containing formatting and confirm the saved result is cleaned.
