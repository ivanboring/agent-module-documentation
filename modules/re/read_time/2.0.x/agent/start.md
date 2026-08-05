<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Read time (read_time) — agent index

Calculates and displays estimated reading time. No dependencies.
Core requirement `^8.8 || ^9 || ^10 || ^11`. **Release is 2.0.0-beta4 — beta.**

Key facts:
- The calculation is word count ÷ assumed words-per-minute. Two configuration points that change
  the answer materially:
  - **The wpm figure is a convention, not a measurement.** The usual 200–250 wpm comes from
    studies of adults reading prose; technical documentation, tables and code read far more
    slowly, so a docs site's estimates will run optimistic.
  - **What counts as a word.** Whether images, captions and embedded media contribute changes the
    estimate noticeably on a picture-heavy article.
- Rendered wherever the field/formatter is placed, so it can appear on teasers, listings and full
  displays consistently — the advantage over a per-template snippet.
