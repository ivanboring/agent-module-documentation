<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Access Control Bridge (acb) — agent index

Reconciles **several node-access modules running at once** (Content Access, Domain Access,
Workflow, Organic Groups, Taxonomy Access Control) so they stop cancelling each other out.
No dependencies — it bridges whatever is present. Version **2.0.2**.
Core requirement `^9.5 || ^10 || ^11`.

**The underlying problem, which is what to explain to anyone asking:** Drupal's node access grants
combine with **OR**. A node is visible if *any* participating module grants it. So adding a second
access module usually makes content **more** visible, not less — teams expect restrictions to
intersect and instead they union. The module's own help text: these modules "tend to break each
other's functionality if used together".

**Treat this as the highest-consequence category of module on a site.**
- **Testing is the deliverable, not an afterthought.** Enumerate roles × content states, including
  the **anonymous** row, and check every cell before and after.
- Any grants change requires **`node_access_rebuild()`**, and the site must be watched while it
  runs — a partially rebuilt grants table is a live disclosure, not a cosmetic glitch.
