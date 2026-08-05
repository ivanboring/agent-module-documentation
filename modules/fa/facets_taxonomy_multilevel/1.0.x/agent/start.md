<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Facets Taxonomy Multilevel (facets_taxonomy_multilevel) — agent index

Two Facets **processor** plugins for hierarchical taxonomy facets. Composer:
`drupal/facets ^2.0 || ^3.0`. Core requirement `^9 || ^10 || ^11`.

| Processor | Effect |
|---|---|
| **Term Depth** | restrict the facet to terms at a chosen hierarchy depth |
| **Term Dependent** | make this facet's contents depend on another facet's active selection |

Key facts:
- Processors are enabled **per facet** in the Facets UI. They change how an existing facet
  behaves; they do not alter the search index or the facet's source, so enabling and disabling
  them is free and reversible.
- Term Dependent is the drill-down mechanism: pair it with Term Depth (level 0 for the parent
  facet) to get "categories first, then subcategories of the chosen category".
- No routes, no permissions. Surface: `src/Plugin/` and `config/schema`.
- Pairs naturally with `facets_autocomplete` (wave 58) on the same search page — depth/dependency
  to shorten the list, autocomplete for the facets that are still long.
