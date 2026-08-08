<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# oEmbed Thumbnail Chooser (oembed_thumbnail_chooser) — agent index

Rewrites YouTube/Vimeo oEmbed thumbnail URLs to the **highest resolution that actually exists**.
Version **1.0.0-beta2**. Core `^8.9 || ^9 || ^10 || ^11`. Depends on core `media`.
One hook implementation; no routes, permissions or config.

`hook_oembed_resource_data_alter()`:
- **YouTube:** `hqdefault` → try `maxresdefault` → try `sddefault` → keep original.
- **Vimeo:** `295x166` → try `1280` → try `960` → keep original, **and updates
  `thumbnail_width`/`thumbnail_height`** so image styles get accurate dimensions.

**Cost:** up to **two extra synchronous outbound HTTP requests per oEmbed fetch**, inside the
request creating/refreshing the media. Uses `$client->get()` (downloads the full body where `HEAD`
would do) with **no explicit timeout** — inherits the site's Guzzle default. Watch bulk imports.

Other providers pass through unchanged.