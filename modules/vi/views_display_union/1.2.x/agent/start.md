<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Display Union (views_display_union) — agent index

Views display type that combines several displays' results with a SQL **UNION**. Depends on core
`views`. Core requirement `^10.2 || ^11 || ^12` (declares Drupal 12).

Key facts:
- Surface: `src/Plugin/` (display + query plugins), `src/Hook/`, `config/schema`,
  `views_display_union.services.yml`. No routes or permissions.
- **It is a real SQL `UNION`**, and two consequences follow:
  1. the constituent displays must produce **compatible column sets** — mismatches surface as SQL
     errors, not as Views validation messages;
  2. **access is applied per constituent query.** On a site with node access modules or an entity
     access module, verify that each constituent enforces access as expected — a UNION is where
     access assumptions are easiest to get wrong, and the failure is silent over-disclosure.
- Choose it over Search API when the requirement is genuinely a query-combination problem rather
  than a search problem; Search API brings an indexing stack, relevance and facets that a UNION
  does not.
- Sorting and paging apply to the **combined** set — that is the advantage over rendering several
  views in sequence.
