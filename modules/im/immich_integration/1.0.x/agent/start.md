<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Immich Integration (immich_integration) — agent index
**Service-layer `ImmichClient` (Guzzle) + admin UI for connecting Drupal to an Immich photo server.**

- **Version:** 1.0.1 → dir `1.0.x`
- **Core:** ^9.4 || ^10 || ^11
- **Service:** `immich_integration.client` (`ImmichClient`) — albums, assets, search, people, tags, shared links, timeline, libraries, memories; returns NULL on error, `x-api-key` header
- **Routes (all `administer site configuration`, `_admin_route`):** `/admin/config/media/immich` (settings), `/test`, `/albums`, `/album/{album_id}`

**Security:** admin routes gated by `administer site configuration`; uses default Guzzle so **TLS verification is on** (no disabled TLS); server URL is admin-set → no untrusted-input SSRF. Observations: **API key stored in plaintext config** (`api_key` → `immich_integration.settings`, `ImmichSettingsForm::submitForm`) — prefer the Key module; and the connection-test callback echoes the server version into `#markup` unescaped (admin-only, trusted-server data, low risk).

See [api/client.md](api/client.md)
