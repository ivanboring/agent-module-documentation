# Search by current language — agent index

Forces core node search to return only current-language results (plus `und`/`zxx` neutral) and
hides the advanced-search language filter. No config, no permissions, no services, no schema —
just two hooks in `search_current_language.module`. Depends on core `search`, `language`,
`content_translation`. Affects **core Search only**, not Search API.

No solution docs are warranted (the whole module is two small hooks). Behavior:

- `search_current_language_query_alter(AlterableInterface $query)` — for queries tagged
  `search_node_search` or `search_search_exclude_node_search`: removes any existing `i.langcode`
  condition, then adds `i.langcode IN [<current language>, 'und', 'zxx']`. Current language =
  `\Drupal::languageManager()->getCurrentLanguage()->getId()`.
- `search_current_language_form_search_form_alter(&$form, $form_state)` — sets
  `$form['advanced']['lang-fieldset']['#access'] = FALSE` to hide the language filter.

No security angle: read-only query narrowing on core search; language comes from the language
manager, conditions use the parameterized query API.
