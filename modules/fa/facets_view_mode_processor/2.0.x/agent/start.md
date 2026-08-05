<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Facets View Mode Processor (facets_view_mode_processor) — agent index

Facets **processor** rendering facet items through an entity **view mode**. Composer:
`drupal/facets ^2.0 || ^3.0`. Core requirement `^9.3 || ^10 || ^11`.

Key facts:
- Enabled **per facet** in the Facets UI; rendering is then configured in Manage Display like
  anything else, so the facet inherits displays the site already has.
- **Cost is the consideration.** Rendering an entity per facet item is far more work than printing
  a label — a facet with 100 values renders 100 entities on every search. Keep it to facets with
  few values, verify render caching, and set a hard limit on the facet.
- Pairs naturally with the other Facets modules in this campaign: `facets_autocomplete` (wave 58)
  for long lists, `facets_taxonomy_multilevel` (wave 59) for hierarchy. This one is for short,
  visual facets — the opposite end.
- No routes or permissions; `src/Plugin/` plus `config/schema`.
