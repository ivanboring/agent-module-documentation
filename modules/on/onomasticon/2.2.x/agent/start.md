<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Onomasticon (onomasticon) — agent index

A glossary **text filter** backed by a taxonomy vocabulary, plus a CKEditor exclude button. No
config form of its own (settings live on the text format), no permissions, no schema, no Drush.

Key facts:
- Filter `@Filter(id = "onomasticon", title = "Onomasticon Filter")` — `FilterOnomasticon`.
  It returns the text unchanged when `onomasticon_vocabulary` is empty, so enabling the filter
  without choosing a vocabulary is a silent no-op.
- **DOM-based, not regex**: text is loaded with `Masterminds\HTML5` into a DOMDocument, normalised,
  and traversed (`processChildren()`); replacements are built as document fragments via
  `appendXML()` and swapped in. A fragment that fails to parse is skipped
  (`try/catch`, `$bool = FALSE`), so a malformed definition silently drops that one replacement.
- Filter settings (per text format):

  | Setting | Meaning |
  |---|---|
  | `onomasticon_vocabulary` | Vocabulary holding glossary terms |
  | `onomasticon_definition_field` | Machine name of the definition field; empty = term description |
  | `onomasticon_definition_filters` | Run `check_markup()` on the description — **the UI warns this can cause infinite loops** if definitions contain glossary terms |
  | `onomasticon_tag` | HTML tag wrapping a match |
  | `onomasticon_disabled` | Tags to skip; anchors and the wrapping tag are added automatically |
  | `onomasticon_implement` | How the definition is attached (a `title`-attribute implementation strips tags — attributes cannot hold markup) |
  | `onomasticon_orientation` | Tooltip above/below |
  | (cursor) | Mouse cursor over a glossary term |

- Cacheability: the `FilterProcessResult` adds
  **`taxonomy_term_list:{vocabulary}`**, so editing/adding a glossary term invalidates rendered
  text without a manual cache clear.
- Editor integration: `Plugin/CKEditorPlugin/OnomasticonExcludeCkeditorButton` (CKEditor 4 style
  annotation) **and** `onomasticon.ckeditor5.yml` for CKEditor 5; `js/build/glossaryExclude.js`,
  `css/glossary_exclude.css` (front end) and `css/glossary_exclude.admin.css` (editor).
- Helpers `onomasticon_get_term_cache()` / `onomasticon_set_term_cache($term_id)` in the `.module`
  memoise term lookups during a request; `hook_theme()` registers `templates/onomasticon.html.twig`.

Performance note: every text render walks the DOM and matches against the vocabulary. On large
vocabularies and long bodies this is not cheap — rely on the render cache and avoid enabling the
filter on formats used for very large documents.
