# Installation

## Requirements

- **Drupal 9, 10, or 11** (`core_version_requirement: ^9 || ^10 || ^11`).
- Core's **Field** module (standard in any Drupal site), since this provides a
  field type.
- A **Commento instance** (hosted at commento.io or self‑hosted) to which the
  embedded widget will connect.

There are no third‑party Composer or PHP library requirements. This release is a
beta and is marked *not covered* by Drupal's security advisory policy.

## Install with Composer

From the project root:

```bash
composer require drupal/commento_field -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/commento_field -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en commento_field -y
```

## Set it up

Commento Field has no central settings form — you configure it by adding the field
and setting permissions, as described in "How to use it" on the
[overview page](../index.md):

- Add a **Commento** field to the relevant content type and point it at your
  Commento instance.
- Grant the **`view commento comments`** and **`toggle commento comments`**
  permissions at **People → Permissions** (`/admin/people/permissions`).

## Verify it worked

View a piece of content that has the Commento field configured. The Commento
comment widget should load in place, connected to your Commento instance. Because
this loads third‑party JavaScript and sends comment data to that instance, review
the privacy/data‑flow implications before exposing it to the public.
