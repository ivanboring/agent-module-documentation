<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Tamper Convert Encoding adds one Tamper plugin that converts a value from one character encoding to another — the fix for a feed arriving in ISO-8859-1 or Windows-1252 and landing in Drupal as mojibake.

---

Feeds and Tamper handle the fetch-and-transform half of an import, and Tamper's plugin set covers most of what a row needs on its way in: trimming, exploding, rewriting, defaults. Encoding is the one that is almost always missing when it is needed, because the problem only appears once the data is already stored and the mangled characters are visible to editors. This module supplies the missing plugin: `src/Plugin` contains the Tamper plugin, and that is essentially the whole module — five files, no routes, no permissions, no configuration of its own. Dependencies are `tamper` and core `system (>=8.5.0)`, with a very wide `^8 || ^9 || ^10 || ^11` core range. Note that despite the project name it depends on **Tamper**, not on Feeds directly, so it is usable anywhere Tamper plugins are consumed. The practical guidance is to convert at import rather than after: fixing encoding once the text is in the database means guessing what the original bytes were, and that guess is not always recoverable.

---

- Convert an ISO-8859-1 feed to UTF-8 on import.
- Fix mojibake from a Windows-1252 source.
- Normalise encoding across several feeds.
- Handle a legacy system exporting non-UTF-8 CSV.
- Convert encoding per field in a Tamper pipeline.
- Avoid storing mangled characters in Drupal.
- Import European-language content correctly.
- Fix accented characters in an import.
- Repair a supplier's product feed.
- Normalise encoding before deduplication.
- Convert encoding for a migration source.
- Chain encoding conversion with other Tamper plugins.
- Handle mixed-encoding data sources.
- Keep search indexing accurate for imported text.
- Fix a feed that broke after a supplier change.
- Support a long-lived import across core versions.
- Convert encoding without a custom plugin.
- Clean data at the point of entry.
