<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LocalGov Search is the sitewide search for LocalGov Drupal: a Search API index covering every content type, a `/search` results page, a header search block, and automatic enrolment of new content types into the index as they are created.

---

Install brings two config objects — the `localgov_sitewide_search` Search API index and the `localgov_sitewide_search` view — plus optional block placements for LocalGov Base and the Scarfolk demo theme. Content is indexed through the **`search_index`** view mode and rendered in results through **`search_result`**, so tuning what gets searched or how a result looks is a Manage display task on the content type, not a Search API one. The clever part is `hook_entity_bundle_create()`: whenever a new node bundle appears, the module adds that bundle to the view's row `view_modes` map (as `search_result`) and to the index's `rendered_item` field configuration (as `search_index`), then saves both — so a content type added months later is searchable without anyone remembering to configure it. Two rendering behaviours polish the results page: `hook_views_pre_render()` blanks the header and empty text until a search has actually been submitted (no `s` query parameter), and prefixes the page title with the search term when there are results; `hook_preprocess_form()` adds `role="search"` to the exposed form for accessibility. The `localgov_sitewide_search_block` block provides the header search box. As with directories, the search **backend** is a separate submodule (`localgov_search_db`) so a site can swap in Solr by not installing it.

---

- Provide sitewide search across all content types.
- Give visitors a search box in the site header.
- Have new content types indexed automatically as they are created.
- Control what is indexed per content type via the search_index display.
- Control how results look via the search_result display.
- Show a clean search page before any query is entered.
- Put the search term in the results page title.
- Improve accessibility with a proper search landmark role.
- Swap the database backend for Solr without rebuilding the index config.
- Exclude a content type from search by removing it from the index.
- Provide a search results page at a predictable /search path.
- Reuse the sitewide index for other search displays.
- Add facets to sitewide search using the Facets module.
- Keep search configuration deployable as config.
- Give a LocalGov site working search immediately after install.
- Index rendered output rather than raw fields.
- Highlight matched terms in results.
- Support multilingual search through Search API.
- Reindex after a display mode change to refresh results.
- Place the search block in any theme region.
