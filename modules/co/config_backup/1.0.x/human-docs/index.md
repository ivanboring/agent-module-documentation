# Config Backup — manual setup guide

**Config Backup** (`config_backup`) makes it easy to **back up your site's
configuration** — creating snapshots of the active configuration that you can
restore or diff later. It works from the Drupal admin UI or from the command line
via `drush`, so you can grab a safety snapshot before a risky change and roll back
if something goes wrong.

The module builds on core's **Configuration Manager** (it depends on the `config`
module) and provides its own permissions to gate who can create and restore
backups. It's a straightforward administration/config-management tool with no
front-end footprint.

One important caveat: **configuration backups can contain sensitive values** — API
keys, credentials, or other settings — depending on how your site stores them. Treat
config backups as **sensitive artifacts**: restrict the backup and restore
permissions to trusted administrators, and store the backups somewhere secure and
not publicly accessible.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — permissions, and creating and
   restoring backups from the UI or Drush.

## Where it lives in the admin menu

Config Backup adds an admin area for creating, downloading, and restoring
configuration snapshots, gated by its own permissions. You can also run backups
from the command line with `drush`. See [Configuration](configuration/index.md).
