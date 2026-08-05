<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Reference Value Pair defines a field type that stores an entity reference **and** a value together in one delta — the shape you need for "this ingredient, this quantity" or "this skill, this rating", without the weight of a paragraph or a referenced entity per row.

---

The recurring Drupal problem is that a plain entity reference field cannot carry data *about* the reference. The usual answers are a Paragraph per row, or a dedicated entity with two fields — both correct and both heavy, adding entity types, forms, permissions and joins for what is conceptually a pair. This module makes the pair a field type: `src/Plugin` supplies the field type, widget and formatter, `templates/reference-value-pair-formatter.html.twig` renders it, `reference_value_pair.views.inc` exposes both halves to Views so listings can filter and sort on either, and a `src/Feeds` namespace provides a Feeds target so pairs can be imported. Dependencies are core `field` only, with core `^10 || ^11`. The trade-off to be honest about is that the value side is a scalar rather than a fielded entity: it cannot be translated independently, cannot carry its own validation beyond what the field settings offer, and cannot be extended later without a data migration. Where those constraints hold, this is markedly simpler than the alternatives.

---

- Store a quantity alongside an entity reference.
- Model ingredient plus amount on a recipe.
- Record a skill and a proficiency level.
- Attach a price to a referenced product option.
- Give a team member a role within one field.
- Avoid a paragraph type for a simple pair.
- Filter a view by either half of the pair.
- Sort listings on the value component.
- Import pairs through Feeds.
- Keep a simple data model simple.
- Record a rating against a referenced item.
- Store a weight or ordering value per reference.
- Render pairs with a Twig template override.
- Reduce entity count on a large site.
- Model survey answers as question plus score.
- Attach a percentage to a referenced category.
- Report on pairs through Views.
- Replace two parallel multi-value fields.
