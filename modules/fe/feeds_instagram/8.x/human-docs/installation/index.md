# Installation

## Requirements

- **Drupal 9.3, 10, or 11** (`core_version_requirement: ^9.3 || ^10 || ^11`).
- The **Feeds** module (`feeds`) — this fetcher/parser plugs into Feeds.
- The **Permanent Cache Bin** module (`pcb`) — a dependency of this module.
- An **Instagram Business Account** connected to a **Facebook page** you
  administer, plus Graph API credentials/token (see the module's
  [project page](https://www.drupal.org/project/feeds_instagram) and the Instagram
  Graph API Getting Started guide).

There are no third‑party PHP libraries to install.

## Install with Composer

From the project root:

```bash
composer require drupal/feeds_instagram -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer pull in Feeds, Permanent
Cache Bin and any shared dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/feeds_instagram -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en feeds_instagram -y
```

Drupal enables the Feeds and Permanent Cache Bin dependencies automatically.

## A note on credentials

The Instagram/Graph API token is a credential. Store it securely (backed by an
environment variable) rather than committing it. With DDEV you can store a value
with `ddev dotenv set .ddev/.env --instagram-token=<value>` (keep `.ddev/.env` out
of version control) and `ddev restart`.

## Verify it worked

Create a feed type at **Structure → Feed types** and confirm that the **Instagram**
fetcher and parser appear in the fetcher and parser options. Once your account is
connected and credentials are in place, run a small import to confirm media comes
back.
