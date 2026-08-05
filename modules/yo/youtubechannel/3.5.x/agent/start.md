<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Youtube Channel (youtubechannel) — agent index

Block listing recent videos from a YouTube channel via the **YouTube Data API v3**.
No module dependencies. Core requirement `^8.9 || ^9 || ^10 || ^11`.
Settings at `/admin/config/services/youtubechannel`, gated by core's
`administer site configuration` (the module declares no permission of its own).

Key facts:
- Two API calls per fetch, both in `youtubechannel.module`:

  ```
  https://www.googleapis.com/youtube/v3/channels?part=contentDetails&id={channel}&…&key={api_key}
  https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&…&playlistId={uploads}&key={api_key}
  ```

  The first resolves the channel's *uploads* playlist; the second lists its items.
- **API key handling.** The key is stored in `youtubechannel.settings`
  (`youtubechannel_api_key`) and rendered as the settings form's `#default_value`. Two
  consequences: it appears in `drush cex` output unless excluded, and it is visible to anyone
  with `administer site configuration`. Per this repo's convention, put the value in an
  environment variable (`ddev dotenv set .ddev/.env --youtube-api-key=…`) and reference it
  rather than committing it in config.
- **Quota.** Every render that misses cache costs YouTube Data API quota. Verify the block's
  cache behaviour before placing it on a high-traffic page — the module is small and does not
  implement its own long-lived cache layer.
- Surface: `src/YoutubechannelSettingsForm.php`, `src/Plugin/Block/`,
  `templates/youtubechannel-block.html.twig`, `css/`, `js/`. No entity types, no services.
- The `.info.yml` still reports the legacy `version: '8.x-3.5'` packaging string.
