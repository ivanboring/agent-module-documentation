<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Order By Delta (views_order_by_delta) — agent index

Views sort handler for a multi-value field's **delta** (its stored position). Depends on core
`views`. Core requirement `^8.9 || ^9 || ^10 || ^11`. **Release is 3.0.0-alpha2 — alpha.**

Key facts:
- Whole module: `src/Plugin/` (the sort handler) + `views_order_by_delta.views.inc` (registration)
  + `.module`. No routes, permissions or config.
- **The problem it solves:** Views can join to a multi-value field but only offers the *referenced
  entity's* properties as sorts — title, created, id. None of those is the order the editor
  dragged the values into, which is the delta.
- Works for any field with deltas: entity references, multi-value text, paragraphs.
- Alternatives and why they are worse for this: a weight field on the referenced entity makes the
  order **global** rather than per-reference; Entityqueue introduces a whole ordering system for
  one field.
- Requires the join to the field table to be present in the view — add the field (or a
  relationship) before the sort will be available.
