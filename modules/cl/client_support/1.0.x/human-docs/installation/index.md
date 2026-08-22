# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- A working **outbound email** setup on the site — submitted support requests are
  sent by email, so the site must be able to send mail.

There are no third‑party Composer or PHP library requirements, and no module
dependencies.

## Install with Composer

From the project root:

```bash
composer require drupal/client_support -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/client_support -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en client_support -y
```

## Grant the permissions

Client Support adds two permissions, assigned under **People → Permissions**:

- **`access client support`** — lets a role see and use the Support link and form.
  Grant this to the editors/clients who should be able to ask for help.
- **`administer client support`** — lets a role configure the module (including the
  recipient email address). Because support requests can contain personal data,
  grant this only to your support staff.

## Verify it worked

Set the recipient email address on the settings form (see
[Configuration](../configuration/index.md)), then log in as a user with
`access client support`, click the **Support** link in the admin menu, and submit a
test request. The configured recipient should receive an email containing the
submitter's name and email, the originating page URL, and the message.
