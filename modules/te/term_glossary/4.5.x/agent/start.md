<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Taxonomy Term Glossary (term_glossary) — agent index

Highlights taxonomy terms in rendered content and shows their descriptions in a dialog or
tooltip. Depends on core `taxonomy`, `text` and `jquery_ui_dialog ^2`.
Core requirement `^10.3 || ^11`. Config at `/admin/config/glossary`
(`term_glossary.glossary_config_form`).

Submodules: `term_glossary_abbr` (render as `<abbr>`), `term_glossary_tippy` (Tippy.js
tooltips), `term_glossary_per_node` (per-node opt in/out).

Defines its own plugin type **`TermGlossaryHandler`** (`TermGlossaryHandlerPluginManager`,
`…HandlerBase`, `…HandlerInterface`, `src/Annotation/`) — presentation is swappable, and
`term_glossary.api.php` documents the hooks (`term_glossary_alter_result(s)`).

## Front-end JSON endpoints — all `_permission: 'access content'`

| Route | Path | Scope enforcement |
|---|---|---|
| `…apiSearch_per_letter` | `/glossary-search-letter/{letter}` | `vid IN <configured>` + `accessCheck()` |
| `…apiSearch_per_term` | `/glossary-search-term?t=` | `vid IN <configured>` + `accessCheck()` |
| `…get_term_by_id` | `/glossary-get-term-by-id/{tid}` | **none — plain `load($tid)`** |

**Verified on this site (see local `security.md`):** all three return **unpublished** taxonomy
terms to anonymous users, and `get-term-by-id` additionally ignores the configured vocabulary
list, so any term in any vocabulary is retrievable by iterating `tid`. Core denies the same
terms (`$term->access('view', anonymous)` is `FALSE`; `/taxonomy/term/{tid}` 404s).
Do not enable on a site with non-public or draft taxonomy without patching.

Other notes:
- `buildTermResult()` escapes correctly on the no-view-mode path
  (`Html::escape()` on the name, `Xss::filter()` on the description); with a view mode
  configured it renders through the term view builder instead.
- `getVocabularies()` throws `\Exception('glossary has not been configured yet')` when unset —
  the two search routes return a 500 until the module is configured, but
  `get-term-by-id` works immediately because it never calls it.
