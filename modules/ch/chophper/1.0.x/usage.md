<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Chophper provides two text field formatters that truncate formatted (HTML) text without breaking tags, backed by the `code-atlantic/chophper` PHP library.

**Trimmed (Chophper)** is a drop-in alternative to core's Trimmed formatter (for `text`, `text_long`, `text_with_summary`) that truncates by words, characters, sentences or blocks and appends a configurable ellipsis; when truncating by characters it can optionally avoid splitting mid-word. **Summary or trimmed (Chophper)** (for `text_with_summary`) renders the field's summary when one exists, otherwise falls back to Chophper truncation. Both extend core's `TextTrimmedFormatter`, so they slot into Manage Display like any formatter.

There is no admin page, permission, route or service — configuration is entirely per-field-display formatter settings (trim limit, truncate-by unit, ellipsis, preserve-words). Install the Composer library, then pick the formatter on a field's display and tune its settings.
---
Choose a Chophper formatter on a formatted-text field's display to truncate it cleanly, HTML-aware.
---
- Truncate a body field to N words without breaking HTML tags
- Truncate by character count instead of words
- Truncate by number of sentences
- Truncate by number of block elements
- Show a teaser that preserves inline markup
- Append a custom ellipsis string to truncated text
- Avoid cutting a word in half when trimming by characters
- Use a field's summary when present, else truncate the body
- Replace core's Trimmed formatter with an HTML-aware one
- Apply different trim limits per view mode (teaser vs full)
- Format a `text_with_summary` field for a listing page
- Format a `text_long` field in a card/grid display
- Keep valid HTML in RSS/search-result excerpts
- Configure trim settings per entity display
- Standardize teaser length across content types