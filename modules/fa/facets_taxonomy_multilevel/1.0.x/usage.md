<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Facets Taxonomy Multilevel adds two Facets processors — **Term Depth** and **Term Dependent** — that make a hierarchical taxonomy behave sensibly as a facet, showing only the level a visitor has reached rather than every term at once.

---

A deep vocabulary makes a poor flat facet: "Category" with four levels and six hundred terms produces a list where the useful distinctions are invisible. Facets can render hierarchy, but deciding *which* terms to offer at a given moment is the harder half, and that is what these processors do. **Term Depth** filters the facet to terms at a chosen depth, so a facet can show only top-level categories until one is chosen. **Term Dependent** makes a facet's contents depend on what has been selected elsewhere, which is how a second facet narrows to the children of the first — the drill-down behaviour visitors expect from a catalogue. Both are ordinary Facets processor plugins in `src/Plugin` with `config/schema` for their settings, enabled per facet from the Facets UI, so they change how an existing facet behaves without altering the index or the facet's source. Composer accepts Facets `^2.0 || ^3.0`, spanning both current majors, with core `^9 || ^10 || ^11`.

---

- Show only top-level categories until one is chosen.
- Drill down through a multi-level taxonomy.
- Make one facet depend on another's selection.
- Reduce a facet from hundreds of terms to a handful.
- Build a catalogue-style category browser.
- Limit a facet to a specific hierarchy depth.
- Show subcategories only after a category is selected.
- Keep a facet block short on a search page.
- Improve faceted navigation for a deep vocabulary.
- Support a product taxonomy with several levels.
- Chain region and city facets.
- Reduce visitor confusion on a large facet.
- Configure drill-down without custom code.
- Improve mobile usability of a search page.
- Work with Facets 2.x or 3.x.
- Combine with an autocomplete facet widget.
- Model a subject hierarchy in a library catalogue.
- Prevent irrelevant terms appearing in a facet.
