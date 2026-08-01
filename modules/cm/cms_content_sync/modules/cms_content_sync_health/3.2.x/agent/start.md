<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CMS Content Sync - Health — agent index

Read-only "Sync Health" reporting dashboard over Content Sync's `EntityStatus` records.
No config form, no Drush, no plugins. Depends on `cms_content_sync_views`,
`dynamic_entity_reference` and core `views`.

## Routes (`cms_content_sync_health.routing.yml`)
- `entity.cms_content_sync.sync_health` → `/admin/content/sync-health`
  (`Controller\SyncHealth::overview`).
- `entity.cms_content_sync.sync_health.version_mismatches` →
  `/admin/content/sync-health/pushing/version-mismatches` (`Controller\VersionMismatches::aggregate`).
- "Entity Status" tab → the bundled View `content_sync_entity_status`
  (`config/install/views.view.content_sync_entity_status.yml`).

## Permission
- **`access sync health`** — the only permission; gates every Sync Health route
  (`cms_content_sync_health.permissions.yml`).

## Templates
`templates/cms_content_sync_sync_health_{overview,push,pull}.html.twig`.
