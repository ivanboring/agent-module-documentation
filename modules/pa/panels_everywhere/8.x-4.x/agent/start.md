<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Panels Everywhere (panels_everywhere) — agent index

Replaces the theme's page template with a **Panels layout**, so headers, footers, sidebars and
content are all panes in one interface and a different page arrangement is a **variant** rather than
a template. Requires `panels`, `page_manager`, `ctools_block`, core `layout_discovery`.
Version **8.x-4.0-beta4** — **beta**. Core requirement `^9.2 || ^10 || ^11`.

**Two things need saying plainly:**
1. **This is the Drupal 7 architecture, and core has moved elsewhere.** **Layout Builder** is core's
   answer to the same question, is core-maintained, and is where the ecosystem's attention is —
   while `panels` and `page_manager` remain in long-running beta. **This belongs to sites that
   already have it**, not to new builds; a new project choosing it chooses a smaller and shrinking
   community.
2. **Taking the page shell away from the theme has consequences worth checking.** Anything assuming
   the theme's regions — a contrib module placing a block, a theme's own preprocess, the **toolbar**,
   **status messages** — needs verifying. Those assumptions are exactly what the inversion breaks.

Where it is coherent: teams whose page structures vary a great deal, or who want **site builders**
rather than front-end developers making those decisions.
