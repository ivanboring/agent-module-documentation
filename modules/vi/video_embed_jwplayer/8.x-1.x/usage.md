<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Video Embed JW Player adds JW Player as a provider for Video Embed Field, so a JW Player URL pasted into a video field renders as a player with a thumbnail.

---

JW Player occupies a different position from YouTube or Vimeo and it is worth being clear about which problem it solves. It is a **paid hosting and player product**, bought by organisations that want video on their own terms: no platform branding, no recommended-videos panel suggesting a competitor at the end, no advertising they did not sell, control over the player's appearance, and analytics they own. Broadcasters, publishers and larger commercial sites use it for exactly those reasons, and a Drupal site alongside one needs to reference the hosted video rather than reimplement the player. This supplies the provider plugin, requiring `video_embed_field`, version **8.x-1.4** on `^8` through `^11`. Everything else — the field type, formatters, WYSIWYG integration and media source — comes from the parent module, which is the architecture that makes provider plugins small. Three things worth attaching. **A third-party player is still a third-party request** with cookies and a reported view, so the consent question applies as it does to YouTube, even though the vendor relationship is different. **Video needs captions**, which is a WCAG requirement for prerecorded content and the only route to the words being searchable — and on a paid platform captioning is usually a feature that has to be turned on and paid for rather than one that appears. And **provider plugins are fragile**: when the platform changes its embed URL format or its player API, the plugin breaks until someone updates it, so check the release date against the platform's current behaviour.

---

- Embed a JW Player hosted video.
- Add self-branded video to a page.
- Avoid platform branding on video.
- Embed video without recommendations.
- Add a broadcaster's hosted video.
- Reference paid video hosting.
- Embed video with owned analytics.
- Add a publisher's video to an article.
- Show a JW Player thumbnail.
- Embed video in a WYSIWYG.
- Use JW Player as a media source.
- Add video without third-party ads.
- Embed a controlled-appearance player.
- Show hosted video in a listing.
- Add video to a commercial site.
- Reference a JW Player playlist.
- Embed training video from JW Player.
- Support a media organisation's video.
