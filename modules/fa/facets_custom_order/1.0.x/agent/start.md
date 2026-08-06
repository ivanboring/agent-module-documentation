<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Facets Custom Order (facets_custom_order) — agent index

Sorts a facet's values into a **site-defined sequence** instead of alphabetically or by count.
Requires `facets`. Version **1.0.0**. Core requirement `^8 || ^9 || ^10 || ^11`.

**Why both defaults are wrong for ordered values:**
- **by label** — a size facet reads L, M, S, XL; a price band reads "£0–50, £100–200, £50–100";
- **by count** — worse, because **the order changes as content changes**, so a visitor who filters
  and returns finds the options **rearranged**. Disorienting in a way a fixed wrong order is not.

**Two things worth attaching:**
1. **The order is configuration and the values are content.** A term added after the order was set
   has **no place in the sequence** — and whether it lands at the end or **nowhere** decides whether
   a new size **silently disappears** from the facet. That is the failure this kind of module most
   often produces.
2. **Facet order is usability more than cosmetics.** An unordered list forces the reader to scan all
   of it; an ordered one can be scanned to the right place and **stopped at** — the difference
   between a thirty-value facet that works and one that does not.
