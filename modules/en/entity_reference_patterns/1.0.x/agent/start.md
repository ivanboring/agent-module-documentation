<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Reference Patterns (entity_reference_patterns) — agent index

Controls the labels shown by entity-reference autocompletes and option lists, using token patterns
held in a config entity. Requires contrib `token`. Core `^10.6 || ^11.3 || ^12` — a recent-core
module using OO hooks.

Key facts:
- Config entity **`entity_reference_pattern`**, `config_export`: `id`, `label`, `type`,
  `pattern` (a **token string**), `selection_criteria`, `weight`.
  Admin UI `/admin/config/search/entity-reference-patterns` with `collection`, `new`, `edit`,
  `duplicate`, `delete` links; list builder
  `Controller\EntityReferencePatternListBuilder`, form `Entity\Form\PatternEditForm`.
- Permissions:

  | Permission | `restrict access` |
  |---|---|
  | `administer entity reference pattern` | **true** |
  | `delete entity reference pattern` | **true** |
  | `add entity reference pattern` | — |
  | `edit entity reference pattern` | — |
  | `duplicate entity reference pattern` | — |

- Application (OO hooks in `src/Hook/EntityReferencePatternsHooks.php`):
  - `#[Hook('element_info_alter')]` — hooks the module's matcher into autocomplete elements;
  - `#[Hook('options_list_alter')]` — applies the same labels to select/checkbox widgets, so
    autocomplete and dropdown presentations agree.
- `src/EntityReferencePatterns.php` + `src/EntityReferencePatternMatcher.php` build the suggestion
  labels; `js/entity_reference_patterns.js` supports the widget behaviour.
- `weight` orders patterns; `selection_criteria` decides which fields/widgets a pattern applies to.

```bash
drush cget entity_reference_pattern.entity_reference_pattern.my_pattern
drush php:eval '
\Drupal::entityTypeManager()->getStorage("entity_reference_pattern")->create([
  "id" => "node_with_author",
  "label" => "Node with author",
  "type" => "node",
  "pattern" => "[node:title] — [node:author:name]",
  "weight" => 0,
])->save();'
drush cr
```

Notes:
- Patterns are tokens, so anything the Token module can resolve for that entity type works; an
  unresolvable token renders empty rather than erroring.
- Because labels are altered at the **element** level, code that reads the reference field's raw
  value is unaffected — this changes presentation only.
