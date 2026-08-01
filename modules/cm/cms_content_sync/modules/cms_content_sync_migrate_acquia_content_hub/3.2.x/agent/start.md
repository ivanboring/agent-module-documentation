<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CMS Content Sync - Migrate Acquia Content Hub — agent index

One-time migration helper: builds Content Sync **Pools + Flows** from an existing Acquia
Content Hub configuration. Hard-depends on `acquia_contenthub`. No config entity, permission
or plugins of its own — it produces standard `cms_content_sync_pool` / `cms_content_sync_flow`
config (see the parent `../../../../3.2.x/agent/configure/flows-and-pools.md`).

## Forms / routes (`cms_content_sync_migrate_acquia_content_hub.routing.yml`)
- `...migrate_pushing` → `/admin/config/services/cms_content_sync/migrate-acquia-content-hub`
  (`Form\MigratePush`).
- `...migrate_pulling` → under the Acquia CH filter UI
  (`.../contenthub_filter/migrate-content-hub-filter/{content_hub_filter_id}`, `Form\MigratePull`).

## What it creates (`src/Form/MigrationBase.php`)
- A default **Pool** `content` (label `Content`, `DEFAULT_POOL_MACHINE_NAME`) via
  `Pool::createPool($label,$id,$backend_url,$authentication_type)`.
- A **Flow** keyed to that pool; plus `EntityStatus` records via `CreateStatusEntities`.

## Drush (legacy `*.drush.inc`)
- `content_sync_migrate_acquia_content_hub` (alias `mach`). Required options: `--type`,
  `--backend_url`, `--authentication_type`. Optional: `--site_id`, `--node_push_behavior`, `--sync`.

Note: requires `acquia_contenthub`; on a site without it the module cannot be enabled.
