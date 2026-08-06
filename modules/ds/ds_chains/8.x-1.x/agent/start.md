<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Display Suite Chains (ds_chains) — agent index

Lets a **Display Suite** layout place a field **from a referenced entity** directly, rather than
rendering the whole referenced entity. Version **8.x-1.3**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**The constant requirement on a relational content model:** an article references an author and the
byline needs the **name and photograph** — not the author's rendered teaser with a biography and a
link. An event references a venue and the listing needs the **town**. A product references a
manufacturer and the card needs the **logo**.

**Without chaining the options are both bad:** a view mode built solely for this placement
(multiplying view modes until nobody knows which is used where), or a **preprocess function** that
loads the reference and extracts the field — code for a display decision.

**Two things follow from reaching through a reference:**
1. **Verify access.** A chained field should respect the referenced **entity's access** and its own
   **field access**. One that renders regardless is a way to display something the viewer could not
   see by visiting the referenced entity — **the shape of disclosure that is hard to notice**,
   because the page looks like it is about the host entity.
2. **Each chained field is a load.** A fifty-row listing reaching through a reference is fifty extra
   entity loads unless something caches them — the usual reason a chained listing is slow.
