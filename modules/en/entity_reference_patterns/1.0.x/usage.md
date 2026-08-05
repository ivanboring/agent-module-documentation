<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference Patterns lets you control what an entity-reference autocomplete actually shows: instead of the bare entity label, suggestions can be rendered from a token pattern — title plus author, or SKU plus product name — configured per field with selection criteria.

---

Core's autocomplete offers `Label (id)` and nothing else, which is unhelpful when many entities share a title. This module adds an `entity_reference_pattern` config entity holding a `type`, a token `pattern`, `selection_criteria` describing which fields/widgets it applies to, and a `weight` so several patterns can be ordered and the first match wins. Patterns are managed at `/admin/config/search/entity-reference-patterns` with add, edit, duplicate and delete operations, each governed by its own permission — `administer entity reference pattern` and `delete entity reference pattern` are marked restricted, while add, edit and duplicate are ordinary editorial permissions. Application happens through two OO hooks: `#[Hook('element_info_alter')]` wires the module's matcher into autocomplete elements, and `#[Hook('options_list_alter')]` applies patterns to select-style widgets too, so the same label formatting appears whether the field uses autocomplete or a dropdown. `EntityReferencePatternMatcher` produces the suggestion labels, and a JS library supports the front-end behaviour. It requires the Token module, since patterns are token strings.

---

- Show an author's name alongside the node title in autocomplete.
- Distinguish entities that share the same label.
- Display a product SKU next to its name when referencing products.
- Include a taxonomy parent in term autocomplete suggestions.
- Show the publication date in article reference suggestions.
- Apply different patterns to different reference fields.
- Format select-list options the same way as autocomplete.
- Order patterns so the most specific one wins.
- Duplicate an existing pattern as a starting point.
- Let editors add patterns without full admin rights.
- Restrict pattern deletion to administrators.
- Use any token available on the referenced entity.
- Improve editor accuracy when picking references.
- Reduce mis-selection on sites with duplicate titles.
- Show a status indicator in suggestions for unpublished items.
- Add a bundle label to mixed-bundle reference fields.
- Keep the configuration exportable with the site.
- Apply a pattern to one widget without touching others.
- Give media reference fields more informative labels.
- Standardise reference labels across an editorial team.
