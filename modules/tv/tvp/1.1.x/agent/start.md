<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Translate View Path (tvp) — agent index

Makes **path aliases work for view paths** in a multilingual site, including the segmented paths
**Facets Pretty Paths** generates. Depends on core `path_alias` and `views`. Version **1.1.2**.
Core requirement `^8.8.0 || ^9 || ^10 || ^11`.

**Why views resist aliasing:** a view's path is a **route**, not an entity, so it has no alias in
the ordinary sense. Once faceting appends segments (`/products/colour/red/size/large`) the whole
path is module-generated and stored nowhere. Multilingually that leaves French visitors with
English path segments — bad for readers, worse for search, since the localised URL is a
significant ranking signal in its own language.

Implementation: a single **inbound/outbound path processor** (`TvpProcessor`) — the same mechanism
core uses for language prefixes, so the URL is translated at generation and resolved back on the
way in, rather than rewritten after the fact. That is the right approach.

**Two things to check:**
- **Path processors run on every request** — keep alias lookups tight.
- **Round-tripping is the test.** Every generated URL must resolve back to the same view state in
  the same language, including where a facet *value* is itself translated.
