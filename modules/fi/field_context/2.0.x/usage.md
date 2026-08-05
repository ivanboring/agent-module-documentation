<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Field Context provides a Views **argument default** plugin that takes a contextual filter's value from a field on the node of the current page — so an embedded view can filter itself by, say, the host node's category without any custom code.

---

Views contextual filters can default from the URL, the current user or a fixed value, but not from an arbitrary field on the page's node. This plugin, `fcmatch` (*Field from route context*), adds that. Its settings form first asks you to pick a **content type**, then — via `#states`, because an AJAX callback inside the plugin class is not callable — reveals a second select listing the fields available on that bundle, built from `entity_field.manager`'s field map. At runtime `getArgument()` reads the chosen field name, pulls the node from the current route match (`$this->routeMatch->getParameter('node')`, checked with `instanceof NodeInterface`), verifies the node actually has that field, and returns `->getString()` on it. If any of those checks fail it returns nothing, so the view falls back to whatever its "when the filter value is not available" behaviour is. The plugin implements `CacheableDependencyInterface` with `getCacheContexts()` returning `['url']` and `getCacheMaxAge()` returning `Cache::PERMANENT`, which is what keeps embedded-view caching correct per page.

---

- Filter an embedded view by a field on the current node.
- Show related content sharing the host page's category.
- List other items from the same department as this page.
- Drive a view from a node reference field on the page.
- Build a "more like this" block without custom code.
- Filter a listing by the current page's region field.
- Reuse one view across many pages with different context.
- Show sibling content under the same parent reference.
- Filter events by the venue referenced on the current node.
- Avoid writing a custom argument default plugin.
- Keep the contextual filter configuration inside Views.
- Pick the source field per content type in the UI.
- Fall back gracefully when the current route has no node.
- Return nothing rather than erroring when the field is absent.
- Keep the embedded view cached correctly per URL.
- Show documents tagged like the current guide page.
- Filter a directory listing by the current channel's field.
- Build cross-linking blocks on landing pages.
- Support several content types with one plugin configuration set.
- Reduce duplicated views built only to hard-code a filter value.
