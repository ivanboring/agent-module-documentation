<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Varbase SEO (varbase_seo) — agent index

The SEO configuration layer of the **Varbase** distribution. No routes, permissions, config schema
or Drush of its own — it is defaults + integration.

> **Tight core constraint: `~11.4.0`** — Drupal 11.4.x only, not `^11`. This is a distribution
> module pinned to a core minor; it will block a core upgrade until Varbase releases a new
> version. Check this before adding it to a non-Varbase site.

Key facts:
- **`set_weight_after`** in `varbase_seo.info.yml` lists `metatag`, `metatag_facebook`,
  `metatag_google_plus`, `metatag_hreflang`, `metatag_mobile`, `metatag_open_graph`,
  `metatag_twitter_cards`. That is what guarantees this module's hooks and defaults run **after**
  every metatag submodule; without it, metatag's own defaults would win. If you fork or re-create
  this module, preserve the weighting or the SEO defaults silently stop applying.
- Integrates the Varbase SEO stack: Metatag defaults per entity type, Schema.org metatag output,
  Simple XML Sitemap, and Yoast-style editorial analysis. Those modules do the work; this one
  configures and orders them.
- `metatag_google_plus` in the weight list is a leftover from a long-dead Google product — a
  useful signal of how long this configuration has been carried forward.

Because it is distribution glue, on a non-Varbase site expect to want the underlying modules
(`metatag`, `schema_metatag`, `simple_sitemap`, `yoast_seo`) configured directly instead.
