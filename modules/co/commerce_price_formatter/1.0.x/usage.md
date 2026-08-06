<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Price formatter renders a product's price with its promotions applied, so a discounted item shows the original and the reduced price.

---

Commerce calculates promotions at the order level, which is correct — a promotion may depend on the cart's contents, the customer, the quantity or the date — and it means a product listing showing the plain price is telling the truth about the product and the wrong thing about what the customer will pay. The gap is commercially significant rather than cosmetic: "£40, was £50" is the single most effective piece of information on a listing page, and a shop that shows £40 with no reference price has spent the discount without getting the benefit. Rendering the promoted price at display time closes it. Version **1.0.1** on `^9 || ^10 || ^11`, requiring `commerce`, `commerce_product` and `commerce_promotion`. Three things to get right, and they are the three that make promotional pricing legally and technically awkward. **Reference-price claims are regulated** in most markets — the UK and EU require that a "was" price was genuinely charged for a defined period, so a formatter showing a struck-through figure is making a claim the business has to be able to justify, which is a rules question rather than a display one. **A price shown must equal the price charged**, so whatever the formatter computes has to use the same promotion resolution the order will, or the listing and the cart disagree and the customer is the one who notices. And **promoted prices vary by context** — customer, quantity, date, store — so the formatter's output is not cacheable as a shared value unless the cache metadata says what it varied by.

---

- Show a discounted price on a listing.
- Display "was" and "now" prices.
- Render a promotion's effect on a product.
- Show a sale price in a catalogue.
- Display a percentage saving.
- Show promoted prices on a product page.
- Render a member price.
- Show a bulk discount in a listing.
- Display a time-limited offer's price.
- Show original and reduced prices.
- Render a promotion on a teaser.
- Display a strikethrough price.
- Show the price a customer will pay.
- Render promotional pricing in a view.
- Display a campaign discount.
- Show a clearance price.
- Render a bundle's discounted price.
- Display seasonal pricing.
