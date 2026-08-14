<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Configuring Jellyfin Integration

## Settings
Route `jellyfin_integration.settings` → `/admin/config/media/jellyfin` (permission `administer site configuration`). Form `JellyfinSettingsForm` edits `jellyfin_integration.settings`:
- `server_url` (`#type url`) — base URL of the Jellyfin server.
- `api_key` (`#type textfield`) — a Jellyfin API key.

A "Test connection" button validates reachability before values are committed (on failure the original values are restored).

## Browsing routes (all `administer site configuration`)
- `/admin/config/media/jellyfin/library` — list libraries.
- `/admin/config/media/jellyfin/movies` — browse movies.
- `/admin/config/media/jellyfin/series` — browse TV shows.
- `/admin/config/media/jellyfin/library/{library_id}` — items in a library.
- `/admin/config/media/jellyfin/item/{item_id}` — item detail.

## Operator security notes
- The `api_key` is stored in plain config and appended to stream URLs as `?api_key=...` (`JellyfinClient.php:562`). Prefer restricting who can read config/exported config; there is no Key-module integration.
- Only administrators reach these pages; remote Jellyfin field values are printed into some admin markup without escaping, so trust the server you point at.
