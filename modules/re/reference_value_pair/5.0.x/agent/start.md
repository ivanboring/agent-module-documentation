<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Reference Value Pair (reference_value_pair) — agent index

Field type storing an **entity reference plus a value** in a single delta. Depends on core
`field`. Core requirement `^10 || ^11`.

Key facts:
- Surface: `src/Plugin/` (field type, widget, formatter), `src/Feeds/` (Feeds target),
  `reference_value_pair.views.inc` (both halves exposed to Views),
  `templates/reference-value-pair-formatter.html.twig`, `config/schema`. No routes, no
  permissions, no services.
- Choose it over a Paragraph or a dedicated entity when the "value" is genuinely a scalar. The
  limits that follow are real and worth stating up front:
  - the value cannot be translated independently of the reference;
  - it carries no fields of its own, so it cannot be extended later without a data migration;
  - validation is limited to what the field settings expose.
- Views integration means you can filter/sort on the value as well as the reference — that is
  usually the deciding advantage over storing two parallel multi-value fields, where deltas can
  drift out of alignment.
