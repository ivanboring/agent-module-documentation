# Configuration

Config Backup doesn't need much setup — the main things to get right are
permissions and where you keep the backups. You then create and restore snapshots
either from the admin UI or with `drush`.

## Grant permissions carefully

Under **People → Permissions**, grant the module's backup and restore permissions
**only to trusted administrators**. Because a configuration backup can include
sensitive values (API keys, credentials, and other settings), anyone who can
create or download a backup can potentially read those values.

## Create a backup

- **From the admin UI** — open the Config Backup admin area and create a snapshot
  of the active configuration. You can create backups before risky changes so you
  have something to restore to.
- **From Drush** — run the module's config-backup command on the command line
  (handy for scripting or scheduling). Inside DDEV, prefix with `ddev` from the
  host (`ddev drush …`); run `drush` directly inside `ddev ssh`.

## Restore or compare

Use a stored snapshot to restore configuration, or to diff against the current
state so you can see what changed. Treat a restore as a deliberate action — it
overwrites active configuration.

## Store backups securely

Keep the backups somewhere **not publicly accessible** and protect them like any
other sensitive artifact. Don't leave configuration snapshots in a web-reachable
directory, and don't commit ones containing secrets to a shared repository.

> The module's bundled `README.md` carries the most complete and current
> documentation for exact routes, options, and Drush command names.
