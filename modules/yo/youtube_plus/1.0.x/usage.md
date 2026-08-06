<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
YouTube Plus imports videos from YouTube into Drupal and associates them with taxonomy terms.

---

The distinction from an embed module is the important one and decides which is wanted. An **embed** stores a URL and renders a player, so the video is referenced and the site knows almost nothing about it. An **import** creates local entities carrying the video's title, description, thumbnail and duration, which is what makes the videos part of the site rather than windows onto another one: they can be listed, filtered, sorted, searched, categorised by taxonomy, referenced from articles, and surfaced by the same tools as everything else. For an organisation with a channel of a few hundred videos — a broadcaster, a training provider, a museum, a conference series — that difference is the whole point, because "show me every video tagged with this subject, most recent first" is not answerable about content the site has only linked to. Version **1.0.7** on `^9 || ^10 || ^11`. Three things to plan. **The API key is a quota**: YouTube's Data API is quota-limited per day, and an import that walks a large channel will exhaust it, so the import needs to be incremental and to handle being cut off mid-run rather than starting again. **Imported metadata goes stale** — a title edited on YouTube does not change in Drupal unless something re-imports it, so decide whether the local copy is a snapshot or a synchronised mirror, because the two need different code and only one needs a schedule. And **the video itself stays on YouTube**, so the embed's consent and accessibility questions apply exactly as before: importing the metadata does not import the player, and a page listing imported videos still loads third-party players when someone plays one.

---

- Import a channel's videos into Drupal.
- Categorise videos with taxonomy.
- Build a searchable video library.
- List videos by subject.
- Import video titles and thumbnails.
- Build a training video catalogue.
- Filter videos by category.
- Reference imported videos from articles.
- Build a conference talk archive.
- Import a museum's video collection.
- Sort videos by publication date.
- Build a video listing with facets.
- Import durations and descriptions.
- Surface videos in site search.
- Build a broadcaster's video index.
- Associate videos with topics.
- Import a playlist as content.
- Build a lecture video directory.
