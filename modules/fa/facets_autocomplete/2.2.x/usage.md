<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Facets autocomplete adds an autocomplete widget to the Facets module, so a facet with hundreds of values becomes a type-ahead box instead of an unusable wall of checkboxes.

---

Facets renders each facet as a list — checkboxes, links, a dropdown — which works while the value set is small. A "manufacturer" or "author" facet with several hundred entries defeats all of those: the block becomes longer than the results it filters, and the visitor scrolls rather than searches. This module supplies a facet **widget plugin** (`src/Plugin`, with `config/schema` for its settings) that renders the facet as an autocomplete field instead, backed by `js/autocomplete-widget.js`, styled by `css/autocomplete-widget.css` and rendered through `templates/facets-autocomplete.html.twig`. Because it is a widget, it is selected per facet in the Facets UI and changes nothing about how the facet is defined or queried — the same facet can be switched back to checkboxes with one setting. Composer accepts Facets `^2.0 || ^3.0`, spanning both current majors, with core `^9.2 || ^10 || ^11`. As with any facet UI, verify the behaviour with an empty result set and with the facet's "show all / hard limit" settings, since autocomplete changes which values a visitor can discover without knowing them already.

---

- Make a facet with hundreds of values usable.
- Replace a long checkbox list with a type-ahead.
- Let visitors search within a facet.
- Filter a product catalogue by manufacturer.
- Shorten a facet block on a results page.
- Improve faceted search on mobile.
- Keep the facet definition unchanged while changing its UI.
- Offer autocomplete on an author facet.
- Reduce scrolling on a search page.
- Handle a location facet with many entries.
- Switch a facet's widget without re-indexing.
- Give a library catalogue a subject search.
- Combine autocomplete facets with checkbox facets.
- Style the autocomplete to match a theme.
- Support Facets 2.x and 3.x alike.
- Improve discoverability in a large taxonomy.
- Reduce cognitive load on a filter panel.
- Let power users jump straight to a value.
