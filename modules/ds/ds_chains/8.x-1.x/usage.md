<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Display Suite Chains lets a Display Suite layout place a field from a referenced entity directly, rather than rendering the whole referenced entity.

---

The requirement is constant on any site with a relational content model. An article references an author profile and the byline needs the author's name and photograph — not the author's rendered teaser, which brings a biography, a link and whatever else that view mode contains. An event references a venue and the listing needs the venue's town. A product references a manufacturer and the card needs the logo. Without field chaining, the options are to render the referenced entity in a view mode built solely for this placement — which multiplies view modes until nobody knows which is used where — or to write a preprocess function that loads the reference and extracts the field, which is code for a display decision. Chaining makes it a placement, in the interface where the rest of the display is configured. Version **8.x-1.3** on `^8` through `^11`. Two things follow from reaching through a reference. **Access is the question to verify**: a field pulled from a referenced entity should respect that entity's access and its own field access, and a chained field that renders regardless is a way to display something the viewer could not see by visiting the referenced entity — which is exactly the shape of disclosure that is hard to notice, because the page looks like it is about the host entity. And **each chained field is a load**, so a listing of fifty rows each reaching through a reference is fifty extra entity loads unless something is caching them, which is the usual reason a chained listing is slow.

---

- Show an author's name in a byline.
- Display a venue's town in an event listing.
- Show a manufacturer's logo on a product.
- Place a referenced field in a layout.
- Avoid a view mode per placement.
- Show a category's icon on an article.
- Display a related entity's single field.
- Avoid a preprocess function for a field.
- Show a parent page's title.
- Display an organisation's address on a profile.
- Show a referenced image without the teaser.
- Place a term's field in a node display.
- Show a supplier's contact in a listing.
- Display a course's department name.
- Show a referenced date in a card.
- Place a paragraph's field in a layout.
- Show an author's photograph only.
- Display a referenced field in a teaser.
