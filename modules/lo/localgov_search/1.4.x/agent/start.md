<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LocalGov Search (localgov_search) — agent index

Sitewide Search API search for LocalGov Drupal: one index, one view, one block. No `configure`
route, no permissions of its own, no config schema, no Drush. Requires `search_api`,
`localgov_core`, core `node` + `views`.

Submodule (own docs):
- `localgov_search_db` →
  [../../modules/localgov_search_db/1.4.x/agent/start.md](../../modules/localgov_search_db/1.4.x/agent/start.md)

Key facts:
- Config: `search_api.index.localgov_sitewide_search` and
  `views.view.localgov_sitewide_search` (`config/install`); block placements for LocalGov Base and
  Scarfolk in `config/optional`.
- **View modes are the tuning surface**: content is indexed via the node's **`search_index`**
  display and rendered in results via **`search_result`**. Change what is searchable by editing
  those displays, not the index fields.
- `hook_entity_bundle_create($entity_type_id, $bundle)` — for `node` bundles only:
  - adds `$display['default']['display_options']['row']['options']['view_modes']['entity:node'][$bundle] = 'search_result'`
    to the view and saves it;
  - adds `view_mode['entity:node'][$bundle] = 'search_index'` to the index's **`rendered_item`**
    field configuration (only when not already set) and saves the index.
  So new content types join search automatically; **removing** a type from search is manual
  (`/admin/config/search/search-api/index/localgov_sitewide_search/edit`).
- `hook_views_pre_render()` — only for view `localgov_sitewide_search`, display
  `sitewide_search_page`:
  - no `s` query parameter → clears `$view->header` and `$view->empty` (a bare form, no "no
    results" message before the first search);
  - otherwise, with results, sets the title to `"{search term} - {view title}"`. Note the source
    comment: this sets the **header title only, not the page title**
    (localgov_core issue #93).
- `hook_preprocess_form()` adds `role="search"` to
  `views-exposed-form-localgov-sitewide-search-sitewide-search-page`.
- Block plugin `localgov_sitewide_search_block` (*Sitewide search block*).
- The search **backend** is not here — install `localgov_search_db` for the database server, or
  attach the index to Solr yourself.
