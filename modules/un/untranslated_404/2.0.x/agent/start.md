<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Untranslated 404 (untranslated_404) — agent index

Returns the 404 page when an entity is requested in a language it has no translation for.
Depends on core `content_translation`. Core requirement `^10 || ^11`.

Key facts:
- **It replaces Drupal's language fallback**, which by default serves the original language at the
  requested language's URL.
- **This is a policy decision, not a default to apply reflexively:**
  - *Fully-translated site:* 404 is right — fallback creates duplicate content across language
    URLs and tells search engines a page exists in a language it does not.
  - *Selectively-translated site:* fallback may serve visitors better than a dead end.
  The two are not interchangeable; establish which the site is.
- Interacts with **hreflang** output and **sitemap** generation — check those agree, or search
  engines will be told about URLs that now 404.
- No routes, permissions or configuration.
