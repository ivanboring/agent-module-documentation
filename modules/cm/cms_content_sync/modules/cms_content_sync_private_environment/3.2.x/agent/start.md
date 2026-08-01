<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CMS Content Sync - Private Environment — agent index

Lets a site the Sync Core backend can't reach inbound (local/firewalled) take part in sync by
**polling** the backend for queued requests instead of receiving pushes. Requires Basic Auth
configured for Content Sync. No config entity, no own permission, no plugins.

## Route
- `cms_content_sync_private_environment.private_environment` →
  `/admin/config/services/cms_content_sync/private-environment`
  (`Controller\RequestHandlerController::view`, permission `administer cms content sync`).

## Processing
- **Cron:** `hook_cron` (`cms_content_sync_private_environment_cron`) calls
  `RequestHandlerController::processRequests()` when enabled.
- **Drush:** `cms_content_sync_private_environment:poll` (alias `cspep`).
  Arg `limit` = `watch` | `all` | a fixed number. Options: `--pollInterval` (seconds, watch
  mode, default 15), `--host` (override the host Drupal uses to call itself).
  E.g. `drush cspep watch --pollInterval=15`, `drush cspep all`, `drush cspep 10`.
