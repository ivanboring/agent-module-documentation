<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Vanilla Javascript Accordion adds a Views style plugin that renders results as an accessible accordion, using plain JavaScript rather than a library.

---

Views has no accordion of its own, so sites reach for a contrib slider or accordion module — and typically inherit jQuery, a third-party plugin and its accessibility record along with it. The VVJ family takes the other route: vanilla JavaScript, no framework, no bundled library, and accessibility treated as the requirement rather than an afterthought. That means keyboard operation, correct ARIA roles and state, and focus that goes where a screen reader user expects.

The practical consequence is a smaller page and one less dependency to keep patched. `vvj_core` holds the shared foundation and is installed automatically with any VVJ module, so the family can be mixed — accordion here, another format elsewhere — without duplicating the base.

Two constraints to note before planning around it. The core requirement is `^11.3 || ^12`, so this is not available to a Drupal 10 site, and it declares **PHP 8.3**. Both are unusually forward-looking for contrib and are a deliberate signal about the support horizon rather than an oversight.

Because it is a Views style plugin, everything Views already offers applies: filters, sorts, contextual arguments, pagers, caching and access all behave normally, and the accordion is only the rendering layer.

---

- Render Views results as an accessible accordion.
- Replace a jQuery-based accordion module.
- Avoid pulling a third-party JavaScript library onto the page.
- Meet keyboard accessibility requirements for accordion content.
- Give screen reader users correct ARIA state.
- Build a accordion from a filtered content listing.
- Drive the accordion from taxonomy-filtered results.
- Use contextual filters to vary accordion content per page.
- Combine the accordion with a Views pager.
- Reduce front-end payload on a content page.
- Reuse the same VVJ foundation across formats.
- Mix VVJ formats on one site without duplication.
- Theme the accordion with the site's own CSS.
- Plan a Drupal 11.3+ front-end stack.
- Retire an unmaintained accordion module.
- Audit accessibility of an existing accordion implementation.