<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Video Embed Rutube adds Rutube as a provider for Video Embed Field, so a Rutube URL pasted into a video field renders as a player and a thumbnail like a YouTube or Vimeo one would.

---

Video Embed Field's design is a provider plugin per platform, and the ecosystem fills in the platforms core contributors do not use — this is the Rutube one. Rutube is a major Russian video platform, and the reason a module exists for it is straightforward: sites serving a Russian-speaking audience often cannot rely on YouTube being reachable or appropriate, and a regional platform is the practical choice. Version **3.0.1** on core `^10.3 || ^11`, depending on `video_embed_field`. The module itself is small — a provider plugin resolving the URL, the embed markup and the thumbnail — and everything else comes from the parent module: the field type, the formatters, the WYSIWYG integration and the media source. Two things worth stating. **Any third-party video embed is a privacy and consent question**, since the player sets cookies and reports the view to its host, so it belongs behind the site's consent manager the same way an analytics script does. And **provider modules are thin and fragile in the same way**: when the platform changes its embed URL format or its oEmbed endpoint, the plugin breaks until someone updates it, so check the release date against the platform's current behaviour rather than assuming.

---

- Embed a Rutube video in content.
- Serve a Russian-speaking audience.
- Add a regional video platform.
- Show a Rutube thumbnail.
- Paste a video URL into a field.
- Use Rutube alongside YouTube.
- Add video where YouTube is unreliable.
- Embed video in a WYSIWYG.
- Use Rutube as a media source.
- Show a video in a teaser.
- Support a localised media strategy.
- Add a lazy-loaded video thumbnail.
- Embed a training video.
- Support a regional news site.
- Add video to a listing.
- Keep video handling consistent across providers.
- Show a responsive video player.
- Gate a video embed behind consent.
