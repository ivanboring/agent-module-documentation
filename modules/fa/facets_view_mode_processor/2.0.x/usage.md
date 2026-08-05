<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Facets View Mode Processor renders facet items through an entity **view mode** rather than as plain labels, so a facet can show a term's image, description or any other field.

---

Facets normally render as a list of labels with counts, which is right for most filters and limiting when the facet's values are entities with something to show. A brand filter is more usable with logos; a category filter reads better with an icon and a short description; an author facet wants a photograph. Producing that normally means overriding the facet template and loading each entity by hand. This processor lets the site pick a view mode instead, so the rendering is configured in Manage Display like everything else and the facet inherits whatever the site already built. It is a Facets **processor** plugin with `config/schema` for its settings, enabled per facet in the Facets UI, accepting Facets `^2.0 || ^3.0` and core `^9.3 || ^10 || ^11`. The consideration is cost: rendering an entity per facet item is substantially more work than printing a label, and a facet with a hundred values renders a hundred entities on every search. Keep it to facets with few values, check the render caching, and consider a hard limit on the facet.

---

- Show brand logos in a facet.
- Render category icons in a filter.
- Show an author's photo in a facet.
- Use a view mode for facet items.
- Improve a product filter's usability.
- Show term descriptions in a facet.
- Avoid a bespoke facet template.
- Reuse existing display configuration.
- Make a facet visual rather than textual.
- Show images in a faceted search.
- Improve a catalogue's browsing experience.
- Render referenced entities in a filter.
- Configure facet rendering per facet.
- Support a design-led search page.
- Show colour swatches as a facet.
- Improve accessibility with richer labels.
- Support Facets 2.x or 3.x.
- Render a facet as cards.
