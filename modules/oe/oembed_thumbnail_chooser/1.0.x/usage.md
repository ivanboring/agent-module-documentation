<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
oEmbed Thumbnail Chooser rewrites the thumbnail URL that YouTube and Vimeo return, stepping down from the highest resolution to whatever actually exists, so remote video media get a usable poster image.

---

Core's oEmbed media source takes whatever thumbnail the provider hands back. For YouTube that is `hqdefault`, a 480×360 image that looks soft the moment it is displayed at any reasonable size in a modern layout. Higher resolutions exist — `maxresdefault` and `sddefault` — but only for some videos, and YouTube gives no advance indication of which.

The module implements the only reliable strategy: try, and fall back. It hooks `hook_oembed_resource_data_alter()`, rewrites the URL to `maxresdefault`, requests it, and on failure tries `sddefault`, then gives up and keeps the original. Vimeo gets the same treatment with its `295x166` size token swapped for `1280` then `960`, and — a nice detail — the reported `thumbnail_width` and `thumbnail_height` are updated to match, so downstream image styles are working from accurate dimensions.

The cost is in that strategy. Each oEmbed resource fetch now performs up to two additional outbound HTTP requests, synchronously, inside the request that is creating or refreshing the media item. Requests are made with `$client->get()`, which downloads the whole image body when a `HEAD` would have answered the question, and no explicit timeout is set — so the module inherits whatever the site's default Guzzle timeout is. On a bulk import of remote videos, that adds up.

It is a small, focused module — a single hook implementation, no routes, no configuration — and it only alters YouTube and Vimeo URLs; anything else passes through unchanged.

---

- Get a high-resolution YouTube thumbnail.
- Get a high-resolution Vimeo thumbnail.
- Avoid soft poster images on video cards.
- Fall back when maxresdefault does not exist.
- Keep accurate thumbnail dimensions for image styles.
- Improve remote video presentation in a grid.
- Alter oEmbed resource data with a hook.
- Leave non-YouTube, non-Vimeo providers untouched.
- Budget for two extra HTTP requests per video.
- Watch import time on bulk remote-video creation.
- Check the site's default Guzzle timeout.
- Re-save media to refresh thumbnails.
- Use larger image styles on video posters.
- Avoid upscaling a 480x360 thumbnail.
- Confirm the provider allows thumbnail fetching.
- Keep media thumbnails consistent across a listing.