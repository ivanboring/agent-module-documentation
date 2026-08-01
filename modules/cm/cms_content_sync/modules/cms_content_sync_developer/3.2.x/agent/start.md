<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CMS Content Sync - Developer — agent index

Developer helpers for Content Sync. Detects when a Flow's entity-type config is out of date
("version mismatch") and warns admins; adds Drush commands to update flows and force-delete
entities. Depends on `config_ignore`. No permissions, no admin form.

## Config
- `cms_content_sync.developer` config, key **`version_mismatch`** (a map keyed by flow id) —
  internal state written by the `VersionComparison`/`VersionWarning` event subscribers when a
  synced bundle's config changes. Read: `drush cget cms_content_sync.developer`.
- `hook_config_ignore_settings_alter()` adds `cms_content_sync.developer:version_mismatch` to
  the config_ignore list so this transient state is not exported.

## Drush commands (`src/Commands/CMSContentSyncDeveloperCommands.php`)
- `cms_content_sync_developer:update-flows` (alias `csuf`) — re-export/update all Flow
  configurations and clear version warnings.
- `cms_content_sync_developer:force-entity-deletion` (alias `csfed`) — force-delete an entity
  from the sync bookkeeping. Options: `--entity_uuid=`, `--bundle=`.
  Usage: `drush csfed node --entity_uuid="06d1d5b8-..."` or `drush csfed node --bundle="basic_page"`.
