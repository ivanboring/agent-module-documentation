<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Exclude Frontpage Node Views filter (views_filter_not_front) — agent index

A Views filter plugin plus a Search API processor that exclude the site's front-page node. No
config, no permissions, no schema, no Drush. Depends on core `views`.

Key facts:
- Service **`FrontPageNode`** (`src/Service/FrontPageNode.php`, injects `config.factory` +
  `Router`): `getFrontpageNode()` resolves `system.site:page.front` through the router, so an
  alias or any path resolving to a node route works — not just `/node/N`.
- Views filter plugin **`@ViewsFilter("not_front")`** (`NotFront extends FilterPluginBase`):
  - `init()` pulls the front-page node from the service;
  - **`canExpose()` returns FALSE** — the filter cannot be exposed to visitors, which is correct
    (there is nothing to choose) but means you cannot let users toggle it.
- Search API processor **`exclude_front_page_node`** (`ExcludeFrontPage extends ProcessorPluginBase`)
  applies the same exclusion at index/query time; `supportsIndex()` restricts where it is offered,
  and the service is injected via a setter (`setNotFrontService()` / `getNotFrontService()`).
- `views_filter_not_front.views.inc` registers the Views data.

Usage:

```bash
# Add the filter in the Views UI: Add filter → "Exclude frontpage node".
# Or in exported config:
#   display.default.display_options.filters.not_front:
#     id: not_front
#     table: node_field_data
#     field: not_front
#     plugin_id: not_front

# Enable the Search API processor:
drush cget search_api.index.MY_INDEX processor_settings
```

Verify what the service considers the front page:

```bash
drush php:eval 'print \Drupal::config("system.site")->get("page.front");'
```

Note: if the front page is **not** a node (a view, a custom route), `getFrontpageNode()` finds no
node and the filter has nothing to exclude — it degrades to a no-op rather than erroring.
