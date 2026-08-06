<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Pathauto entity parent (pathauto_entity_parent) — agent index

Content declares a **parent entity**; aliases are generated to reflect the hierarchy. Requires
`pathauto` and core `node`, `path`. Version **2.0.0**.
**Core requirement `^11` — Drupal 11 only.**

**Why Drupal's existing tools do not produce this:**
- **Pathauto** builds from tokens, and a node **has no parent** to reference;
- **menus** express hierarchy for navigation and are **not available to the alias pattern**;
- **taxonomy** expresses classification — `/category/subcategory/title` is a different statement;
- **Book** does model parents, and brings its own navigation and printing assumptions most sites do
  not want.

**Three costs of URLs that encode hierarchy — price them before adopting the pattern:**
1. **Moving a page changes its URL and every descendant's.** Automatic redirects on alias change
   (the **`redirect`** module) are effectively a **prerequisite**, not an optional companion.
2. **Depth compounds.** Four levels give long URLs, and a rename near the root **rewrites everything
   below it**.
3. **A cycle is possible unless prevented.** A looping parent chain **recurses during alias
   generation** — confirm the module refuses one rather than finding out during a bulk regeneration.
