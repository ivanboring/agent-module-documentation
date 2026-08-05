<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Field Context (field_context) — agent index

One Views **argument default** plugin that reads a contextual filter value from a field on the
current route's node. No config form of its own, no permissions, no Drush; config schema shipped
for the Views settings. Requires core `views`.

Key facts:
- Plugin `#[ViewsArgumentDefault(id: 'fcmatch', title: 'Field from route context')]` —
  `FieldContext extends ArgumentDefaultPluginBase implements CacheableDependencyInterface`,
  injecting `current_route_match` and `entity_field.manager`.
- Options: `fcftype` (the chosen **node bundle**) plus one `fc{bundle}` option per bundle holding
  the chosen field name. The form builds the bundle→fields map from
  `entityFieldManager->getFieldMap()['node']` and uses **`#states`** rather than AJAX — the source
  notes an AJAX callback inside the plugin class is not callable.
- `getArgument()`:

  ```php
  $key = $this->options['fcftype'];
  if (!empty($this->options['fc' . $key])
      && ($node = $this->routeMatch->getParameter('node')) instanceof NodeInterface
      && isset($node->getFieldDefinitions()[$this->options['fc' . $key]])) {
    return $node->get($this->options['fc' . $key])->getString();
  }
  // otherwise: no return (NULL)
  ```

  So it is **node-only** (no support for other entity types), and it returns the field's
  `getString()` — for a reference field that is the target id, for a multi-value field a
  comma-joined string, which the contextual filter must be configured to accept
  (*Allow multiple values*).
- Cacheability: `getCacheContexts()` → `['url']`, `getCacheMaxAge()` → `Cache::PERMANENT`.
- Failure mode is silent: no node on the route, or the node lacking the field, yields NULL and the
  view's "when the filter value is not available" setting takes over — set that deliberately
  (usually *Hide view*).

Configuring in a view: *Contextual filters → add → When the filter value is NOT available →
Provide default value → Field from route context*, then pick the content type and field.
