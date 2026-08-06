<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Facets Custom Order sorts a facet's values into a sequence the site defines, instead of alphabetically or by result count.

---

Facets sort by count or by label, and both are wrong for values that have an inherent order. A price band should read low to high, not "£0–50, £100–200, £50–100". A size facet should be S, M, L, XL rather than alphabetical, which puts L first. A rating should descend. A date range should run chronologically. A status should follow the workflow. Sorting by count makes it worse rather than better, because the order changes as content changes, so a visitor who filters and returns finds the options rearranged — which is disorienting in a way that a fixed wrong order is not. A configured sequence fixes both. Version **1.0.0** requiring `facets`, on a core range spanning `^8` through `^11`. Two things worth attaching. **The order is configuration and the values are content**, so a vocabulary term added after the order was set has no place in the sequence — and where it lands, at the end or nowhere, decides whether a new size silently disappears from the facet, which is the failure this kind of module most often produces. And **facet order is an accessibility and usability matter more than a cosmetic one**: a list whose sequence has no logic forces the reader to scan all of it, while an ordered list can be scanned to the right place and stopped at, which is the difference between a facet with thirty values that works and one that does not.

---

- Order a price facet low to high.
- Sort sizes S, M, L, XL.
- Order a rating facet descending.
- Sort date ranges chronologically.
- Order a status facet by workflow.
- Fix an alphabetical size ordering.
- Stop facet order changing with content.
- Order a difficulty facet logically.
- Sort a facet by a defined sequence.
- Order age ranges correctly.
- Fix a confusing facet order.
- Sort a priority facet.
- Order distance bands sensibly.
- Improve a product filter's usability.
- Order a course level facet.
- Sort a bedroom-count facet.
- Improve scanning of a long facet.
- Order a severity facet.
