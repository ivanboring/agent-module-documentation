<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Feed Tamper Read Time is a Tamper plugin (for Feeds Tamper pipelines) that converts an HTML value into an estimated reading time in whole minutes.
---
During a feed import you add the "Read Time Calculator" tamper to a source. It strips the HTML to text — loading it into DOMDocument, removing `<script>`/`<style>`, and collecting text nodes via XPath — counts the words, divides by a configurable words-per-minute setting (default 200, range 50–1000), and rounds up, returning the minute count as a string. This lets you populate a "X min read" field automatically from imported body content.

It is a pure transformation plugin with no routes, permissions, or services; configuration is just the WPM number on the tamper instance. The HTML is parsed for word-counting only (text is extracted and discarded), so it is a read-only computation over the imported value.
---
- Auto-calculate "X min read" during a feed import
- Derive reading time from an imported HTML body
- Populate a read-time field from RSS/CSV/XML content
- Set a custom words-per-minute rate per source
- Strip HTML to plain text before counting words
- Exclude script/style content from the word count
- Round reading time up to whole minutes
- Use 200 WPM as a sensible default
- Tune WPM between 50 and 1000 for audience
- Add reading-time metadata to imported articles
- Chain after other tampers in a Feeds pipeline
- Compute read time for migrated blog posts
- Show estimated effort on imported documentation
- Normalise reading estimates across sources
- Feed the minute count into a numeric or text field
- Keep read-time in sync on re-import
