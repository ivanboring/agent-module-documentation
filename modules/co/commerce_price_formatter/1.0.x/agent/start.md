<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Price formatter (commerce_price_formatter) — agent index

Renders a product's price **with promotions applied** — original and reduced. Requires `commerce`,
`commerce_product`, `commerce_promotion`. Version **1.0.1**.
Core requirement `^9 || ^10 || ^11`.

**Why the gap exists:** Commerce resolves promotions **at the order level** — correctly, since a
promotion may depend on cart contents, customer, quantity or date. So a listing showing the plain
price tells the truth about the **product** and the wrong thing about **what the customer will
pay**. Commercially that matters: *"£40, was £50"* is the most effective information on a listing
page, and a shop showing £40 with no reference price has **spent the discount without getting the
benefit**.

**Three things to get right — the three that make promotional pricing awkward:**
1. **Reference-price claims are regulated.** The UK and EU require a "was" price to have been
   genuinely charged for a defined period. A struck-through figure is a **claim the business must
   justify** — a rules question, not a display one.
2. **A price shown must equal the price charged.** The formatter must use the **same promotion
   resolution the order will**, or listing and cart disagree — and the customer notices.
3. **Promoted prices vary by context** (customer, quantity, date, store), so the output is **not
   cacheable as a shared value** unless the cache metadata says what it varied by.
