<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Jellyfin Integration (jellyfin_integration) — agent index

**Client service + admin UI to connect to a Jellyfin media server and browse its libraries, movies, series, and items.**

- **Version:** 1.0.x (1.0.1) · **Core:** ^9.4 || ^10 || ^11 · **Package:** Media
- **Service:** `jellyfin_integration.client` (`JellyfinClient`) — Guzzle wrapper over the Jellyfin REST API; auth header `MediaBrowser Token="<api_key>"`.
- **Config:** `jellyfin_integration.settings` (`server_url`, `api_key`); form at `/admin/config/media/jellyfin`.
- **Routes:** settings + library/movies/series/library_items/item_detail — **all** require `administer site configuration`.
- **Security:** admin-only, no anonymous/mutating endpoints, TLS left at Guzzle default (verified). Observations (not findings-worthy on their own, admin-only): API key in plaintext config and in stream-URL query param (`src/Service/JellyfinClient.php:562`); unescaped remote data into `#markup` via `sprintf` (`src/Controller/JellyfinLibraryController.php:388-396`, `:253`). Server URL is trusted admin config → no user-driven SSRF.

See [configure/settings.md](configure/settings.md) and [api/client.md](api/client.md)
