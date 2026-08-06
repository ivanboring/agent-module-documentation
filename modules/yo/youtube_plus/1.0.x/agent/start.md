<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# YouTube Plus (youtube_plus) — agent index

**Imports** YouTube videos into Drupal and associates them with **taxonomy terms**. Package
`YouTube`. Version **1.0.7**. Core requirement `^9 || ^10 || ^11`.

**Import versus embed is the distinction that decides which you want:**
- **embed** — stores a URL, renders a player. The site knows almost nothing about the video.
- **import (this)** — creates **local entities** with title, description, thumbnail and duration, so
  the videos can be **listed, filtered, sorted, searched, categorised and referenced** by the same
  tools as everything else.

For a channel of a few hundred videos — a broadcaster, training provider, museum, conference series
— that is the whole point: *"every video tagged with this subject, most recent first"* is **not
answerable** about content the site has only linked to.

**Three things to plan:**
1. **The API key is a quota.** YouTube's Data API is **quota-limited per day** — an import walking a
   large channel will exhaust it. Make the import **incremental** and able to resume rather than
   restart.
2. **Imported metadata goes stale.** A title edited on YouTube does not change in Drupal unless
   something re-imports it. Decide **snapshot or synchronised mirror** — different code, and only one
   needs a schedule.
3. **The video itself stays on YouTube.** Importing metadata does not import the player — the
   **consent and captioning** questions apply exactly as before when someone presses play.
