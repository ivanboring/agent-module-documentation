<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Youtube Channel renders a block listing the most recent videos from a YouTube channel, fetched live from the YouTube Data API v3.

---

The module is deliberately small: a settings form at `/admin/config/services/youtubechannel` collecting a Google API key, a channel id and a result limit; a block plugin that renders the list; a Twig template (`youtubechannel-block.html.twig`), a stylesheet and a small JavaScript file. The fetch itself happens in `youtubechannel.module`, which makes two calls — first to `channels?part=contentDetails` to resolve the channel's uploads playlist, then to `playlistItems?part=snippet` for the videos — passing the API key as a query parameter. Two things follow from that design and are worth knowing before deploying it. First, the API key is stored in `youtubechannel.settings`, so it lands in a config export unless excluded; on this repo's convention it belongs in an environment variable, and a Key entity if the module is adapted to support one. Second, YouTube Data API quota is consumed per fetch, so the module's caching behaviour determines whether a busy site exhausts its daily quota — check that before assuming a high-traffic page can carry the block. The settings route is gated by core's `administer site configuration`; there is no module-specific permission.

---

- Show a channel's latest videos in a sidebar block.
- Keep a video list current without manual updates.
- Display a brand's YouTube uploads on the homepage.
- Link visitors to a channel's newest content.
- Limit how many videos the block shows.
- Theme the video list with a Twig override.
- Add channel videos to a landing page region.
- Avoid embedding each video by hand.
- Show a conference channel's talk recordings.
- Surface a training channel inside an intranet.
- Restrict video-block configuration to site administrators.
- Fetch videos through the official YouTube Data API.
- Style thumbnails with the supplied CSS.
- Present a channel feed alongside site content.
- Replace a manually curated video list.
- Show uploads from a partner's channel.
- Give editors a zero-maintenance video block.
- Support a site still on Drupal 9.
