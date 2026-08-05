<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Static Asset Cache Buster (static_asset_cache_buster) — agent index

Appends a cache-busting query string to rendered image and file URLs. **No dependencies beyond
core, no routes, no permissions, no configuration form.** Core requirement `^10 || ^11`.

Key facts:
- Whole module: `static_asset_cache_buster.module`, `src/Plugin/`, `src/Entity/`. Enabling it
  is the configuration.
- Solves the in-place file replacement problem: Drupal keeps the URI when a file is replaced,
  so browsers and CDNs holding a long TTL keep serving the old bytes. The version marker is
  derived from the file's own metadata, so it changes only when the file does.
- **CDN trade-off to state when recommending it:** a new query string is a new cache key. Old
  versions remain resident in the edge cache until they expire, and hit ratios dip while new
  URLs warm. Some CDN configurations also ignore or strip query strings for caching — check the
  edge configuration, or the busting silently has no effect.
- It changes rendered URLs only. Hard-coded URLs in body text or in a theme's CSS are untouched.
