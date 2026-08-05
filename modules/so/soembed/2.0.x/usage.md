<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Simple oEmbed turns a bare media URL in content into an embedded player or card, using the oEmbed protocol — paste a YouTube link on its own line and it becomes a video.

---

oEmbed is the standard by which a provider answers "given this URL, give me embed markup", and it is what makes pasting a link Just Work on most modern platforms. Drupal supports oEmbed through the media system, which is the right architecture for assets an editor manages deliberately — but heavier than needed when the requirement is simply that a pasted link renders. This module takes the lighter path: a **text filter** that finds URLs and replaces them with the provider's embed markup, so it applies at render time to all content in that format, including content that predates it and content arriving through an API. It depends on core `media` and spans `^9.5 || ^10 || ^11`; the release is **8.x-2.0-beta14**. Two things to weigh, as with any embed mechanism. Embedding executes a third party's markup and usually their JavaScript in the visitor's browser, which is a privacy and consent question on a site with a consent manager — and a security consideration, since the site is delegating what renders to the provider. And oEmbed requires the provider to be reachable, so an unavailable provider or a network-restricted environment changes what visitors see.

---

- Turn a pasted YouTube link into a player.
- Embed rich media by URL.
- Let editors embed without markup.
- Apply embedding at render time.
- Cover content imported from another system.
- Embed a tweet or social post by link.
- Reduce editor training on embeds.
- Handle embeds in a text format.
- Embed a map or presentation.
- Avoid creating a media entity per embed.
- Support pasted links in comments.
- Render embeds consistently.
- Add embedding to a legacy content set.
- Configure embedding per text format.
- Embed a podcast player.
- Support a documentation site's media.
- Simplify an editorial workflow.
- Embed content from many providers.
