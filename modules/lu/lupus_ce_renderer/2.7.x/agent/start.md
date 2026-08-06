<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Lupus Custom Elements Renderer (lupus_ce_renderer) — agent index

Serves a page's main content as **custom-element markup plus metadata**, for a front end that
renders the components. Requires **`custom_elements`** (wave 70) and **`metatag`**.
Part of the **Lupus Decoupled** stack (Drupal + Nuxt), usable independently. Version **2.7.0**.
Core requirement `^9 || ^10 || ^11`.

**What it adds over `custom_elements` alone: the transport.** A response carrying element markup
**together with the page's metadata** — because a component tree without a title, canonical URL,
meta tags and a cache signal is only part of a page. **The `metatag` dependency is the tell:** SEO
metadata is in the payload rather than retrofitted, which is what most decoupled architectures get
wrong.

**Two things worth holding on to:**
1. **Drupal keeps its render pipeline, caching and access checks** — the whole argument for this
   over a JSON:API front end that must reimplement all three. It also means a component rendered
   for one user **must carry the cache contexts** that make that safe, exactly as in a coupled site.
2. **Element and attribute names are an API.** Renaming one is a **breaking change** for the front
   end — they need versioning, documentation and an owner. That governance question sinks more of
   these projects than any technical limitation.
