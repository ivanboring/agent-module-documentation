<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple oEmbed (soembed) — agent index

Text format **filter** turning bare URLs into oEmbed embeds. Depends on core `media`.
Core requirement `^9.5 || ^10 || ^11`. **Release is 8.x-2.0-beta14 — beta.**

Key facts:
- **A filter, not a media entity per embed.** It applies at render time to all content in the
  format — including pre-existing and API-submitted content — where Drupal's media-based oEmbed
  requires an editor to create a media item deliberately. Lighter; also less governed.
- **Two things to weigh, as with any embed:**
  1. *Privacy and consent.* Embedding runs a third party's markup and usually their JavaScript in
     the visitor's browser. On a site with a consent manager (`simple_klaro`, wave 58; Orejime,
     wave 64) embeds should be gated behind consent.
  2. *Availability.* oEmbed needs the provider reachable at render time; an unavailable provider
     or a network-restricted environment changes what visitors see.
- Which providers are permitted is the important configuration — an unrestricted oEmbed filter
  delegates rendering to whatever domain an author pastes.
- Enabled and ordered per text format; check its position relative to markup-restricting filters.
