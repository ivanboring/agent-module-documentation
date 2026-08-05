<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Search API Saved Searches (search_api_saved_searches) — agent index

Visitors save a search and get notified about new results. Depends on
`search_api (>= 8.x-1.20)`, core `options` and `user`. Core requirement `^10.1 || ^11`.
`.info.yml` declares **`lifecycle: stable`**.
Config at the saved-search **type** collection (`entity.search_api_saved_search_type.collection`).

Key facts:
- Two entity types: `search_api_saved_search` (content) and its **type** entity, which carries the
  notification schedule, activation rules and index binding — so different alert products can
  coexist on one site.
- **Access is done properly.** Every route uses `_entity_access` on a specific operation rather
  than a flat permission, including a dedicated **`activate`** operation:

  ```yaml
  entity.search_api_saved_search.canonical:  _entity_access: 'search_api_saved_search.view'
  entity.search_api_saved_search.activate:   _entity_access: 'search_api_saved_search.activate'
  entity.search_api_saved_search.edit_form:  _entity_access: 'search_api_saved_search.edit'
  ```

  `activate` exists because an anonymous visitor's saved search must be confirmed by emailed
  link — that is what stops someone subscribing an address they do not own.
- **Permissions are partly generated**: `administer search_api_saved_searches` is declared, plus
  a `permission_callbacks:` entry pointing at `Permissions::bySavedSearchType()`. Grep the class,
  not only the YAML.
- `search_api_saved_searches.plugin_type.yml` declares a **notification** plugin type — delivery
  is extensible beyond email.
- **Operational planning:** notifications run on cron and **re-execute the saved queries**. Cost
  scales with the number of saved searches, so a popular site needs the cron budget checked.
- **Privacy:** anonymous saved searches store email addresses and a query. That is personal data
  — decide retention and cover it in the privacy notice.
