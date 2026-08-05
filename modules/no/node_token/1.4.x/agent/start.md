<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Node Token (node_token) — agent index

Adds a **per-bundle token type** for every node type. One file, one hook, no config, no
permissions, no schema, no Drush. Requires contrib `token`.

Key facts:
- Everything lives in `node_token.tokens.inc` → `hook_token_info_alter(&$data)`.
- For each `node_type` entity, a token type **`node-{bundle}`** is created by cloning
  `$data['types']['node']`:
  - `name` ← the content type label;
  - `description` ← the content type description, when set;
  - `needs-data` ← the new token type name (so callers must pass the node as that data key).
- The cloned token list is **pruned**: fields present on `node` generally but absent from the
  bundle are removed —
  `array_diff_key($data['tokens'][$token_type_name], array_diff_key($node_fields, $bundle_fields))`.
- Field tokens are resolved through `token.entity_mapper->getTokenTypeForEntityType('node')` and
  the typed-data definitions (`EntityDataDefinitionInterface`,
  `DataReferenceDefinitionInterface`), so reference fields map to the right token type; fields
  whose entity type has no token type are skipped.
- The generic `[node:…]` type is **not** removed — both remain available.

Using the tokens:

```php
// The data key must match the token type name.
$text = \Drupal::token()->replace('[node-article:title] — [node-article:field_subtitle]', [
  'node-article' => $node,
]);
```

That `needs-data` detail is the main gotcha: passing `['node' => $node]` will **not** resolve
`[node-article:…]` tokens. In UI contexts (pathauto, metatag, Token module's browser) the
integration handles the data key for you.

Discovery:

```bash
drush php:eval '
$info = \Drupal::token()->getInfo();
print implode("\n", array_filter(array_keys($info["types"]), fn($t) => str_starts_with($t, "node-")));'
```

Adding or removing a field on a bundle changes the offered tokens after a cache rebuild
(`drush cr`) — the hook runs at token-info build time.
