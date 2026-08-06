<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Video Embed JW Player (video_embed_jwplayer) — agent index

**JW Player** provider plugin for **Video Embed Field**. Requires `video_embed_field`.
Version **8.x-1.4**. Core requirement `^8 || ^9 || ^10 || ^11`.

**JW Player solves a different problem from YouTube or Vimeo.** It is a **paid hosting and player
product**, bought by organisations that want video on their own terms: **no platform branding**, no
recommended-videos panel suggesting a competitor at the end, **no advertising they did not sell**,
control over the player's appearance, and **analytics they own**. Broadcasters, publishers and
larger commercial sites use it for exactly those reasons.

The plugin is small because the parent module supplies the field type, formatters, WYSIWYG
integration and media source.

**Three things worth attaching:**
1. **A third-party player is still a third-party request** with cookies and a reported view — the
   **consent** question applies as it does to YouTube, whatever the vendor relationship.
2. **Video needs captions** — a **WCAG** requirement for prerecorded content and the only route to
   the words being **searchable**. On a paid platform captioning is usually a feature to **turn on
   and pay for**, not one that appears.
3. **Provider plugins are fragile.** A changed embed URL format or player API breaks the plugin
   until someone updates it — check the release date against current platform behaviour.
