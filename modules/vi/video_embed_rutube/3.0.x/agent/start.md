<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Video Embed Rutube (video_embed_rutube) — agent index

Adds **Rutube** as a provider plugin for **Video Embed Field**. Requires `video_embed_field`.
Version **3.0.1**. Core requirement `^10.3 || ^11`.

A thin provider: URL resolution, embed markup, thumbnail. Everything else — field type, formatters,
WYSIWYG integration, media source — comes from the parent module.

**Why it exists:** Rutube is a major Russian video platform. Sites serving a Russian-speaking
audience often cannot rely on YouTube being reachable or appropriate.

**Two things to state whenever this is recommended:**
1. **Third-party video embeds are a consent question.** The player sets cookies and reports the
   view to its host — it belongs behind the consent manager exactly as an analytics script does.
2. **Provider plugins are fragile.** When the platform changes its embed URL format or oEmbed
   endpoint, the plugin breaks until someone updates it. Check the release date against the
   platform's current behaviour rather than assuming.
