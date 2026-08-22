# Installation

## Requirements

- **Drupal 10 or 11** (`core_version_requirement: ^10 || ^11`).
- Core's **Node** module (`node`) — the only hard dependency, enabled by default on
  most sites.
- No external PHP libraries.

Optionally, the module is **Content Moderation, Media, and Paragraphs aware**: when
those modules are enabled it takes their revisions and references into account.
**Admin Toolbar** makes it quicker to reach the configuration page, and **Queue UI**
or **Ultimate Cron** help you watch queued and scheduled purges on busy sites — all
optional.

## Install with Composer

From the project root:

```bash
composer require drupal/fast_revision_purge -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/fast_revision_purge -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en fast_revision_purge -y
```

## Verify it worked

Go to **Configuration → Development → Fast Revision Purge**. You should see the
purge configuration screen. Before doing anything else, run a **dry run** (in the
UI or with `drush frp:dry-run`) to confirm the tool can read your revisions and to
preview counts — no revisions are deleted by a dry run. Only after reviewing those
numbers, and taking a backup, should you run a real purge.
