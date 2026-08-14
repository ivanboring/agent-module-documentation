<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# PhotoPrism Integration (photoprism_integration) — agent index

**Service-oriented client + admin UI for a PhotoPrism photo server (albums/photos/labels/people via REST).**

- **Version:** 1.0.x (1.0.1)
- **Core:** ^9.4 || ^10 || ^11
- **Configure:** `/admin/config/media/photoprism` (`administer site configuration`)
- **Admin routes:** albums list + `album/{album_uid}` view (all `administer site configuration`).
- **Service:** `photoprism_integration.client` (`PhotoPrismClient`) — `request()` prepends configured server URL, sends `Authorization: Bearer <token>`, decodes JSON.

**Security:** TLS verification is NOT disabled (Guzzle default `verify`). Server URL is admin-config (not request-controlled) → not SSRF. Access token stored in plain config `photoprism_integration.settings` and shown in the settings form — plaintext secret (config export may carry it); no Key-entity support. All routes are admin-permission-gated. See [api/client.md](api/client.md)
