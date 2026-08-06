<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference Filtering Link renders a reference field as a link to a *view filtered by* the referenced entity, rather than a link to that entity's own page.

---

A reference field's default link goes to the referenced entity's canonical page — the term page, the node, the user. Often that page is not what anyone wants. A "Brand" reference on a product should lead to the product listing filtered by that brand; a "Region" reference should lead to the events in that region; an "Author" reference should lead to their article listing. What you want is a listing view with a contextual filter, and the reference's job is to be the link into it.

Doing that by hand means either a Twig override that builds a URL with a query string, or a custom formatter — per field, repeated. This module supplies it as a configurable formatter: `EntityReferenceFilteredLinkFormatter` builds the link, and `EntityReferenceFilteredLinkDisableFormatter` is the counterpart for when the link should be suppressed.

The natural pairing is with a Views page that takes the reference value as an exposed filter or a contextual argument. That makes it a lightweight substitute for a faceted search on sites that only need one or two facets — the reference field becomes the facet link, and Views does the filtering.

Two things to check when configuring it. The target view must actually accept the value the formatter passes, so agree on the parameter shape first. And a link that produces an empty listing is worse than no link, so consider what happens when the filtered view has no results.

---

- Link a brand reference to a filtered product listing.
- Link a region reference to events in that region.
- Link an author reference to their article listing.
- Turn a taxonomy reference into a facet link.
- Send a category link to a filtered view rather than a term page.
- Replace a Twig override that built a query-string link.
- Provide lightweight faceting without a facets module.
- Link to a view with a contextual filter argument.
- Suppress the link on a reference field in some displays.
- Keep listing pages as the destination for reference clicks.
- Avoid sending visitors to sparse term pages.
- Configure the link target per field display.
- Use different formatters in teaser and full view.
- Check the target view accepts the passed parameter.
- Decide what a filtered link does when there are no results.