<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce add to cart confirmation shows a confirmation screen or dialog after a product is added, instead of leaving the shopper on the product page with only a status message.

---

The default behaviour is a status message at the top of the page, which on a long product page is frequently off-screen — so the shopper is unsure whether the click registered, clicks again, and either adds two or abandons. A confirmation resolves the ambiguity and, more importantly, is the moment with the most attention in the whole session: the shopper has just committed to something, and the two questions in front of them are "continue shopping" or "go to checkout". That choice is the single highest-leverage piece of interface on a store, which is why every large retailer has one. This module supplies it, requiring `commerce_cart`, `commerce_product` and core `views` — the Views dependency being the interesting part, since it means the confirmation's contents are a view and can therefore show related products, recently viewed items or a cart summary without custom code. Version **2.0.0** on core `^10.3 || ^11`. Two things to get right, both of which turn a helpful confirmation into an obstacle when they are wrong. **It must not block the next action**: a modal that has to be dismissed before adding a second item makes buying three things worse than the status message did, so the "continue shopping" path needs to be one click and obvious. And **a modal is a focus event**, so it must trap focus while open, return focus to the add-to-cart button on close, close on Escape, and announce itself — a confirmation nobody can dismiss with a keyboard is a checkout nobody can complete.

---

- Confirm an item was added to the cart.
- Offer continue shopping or checkout.
- Reduce duplicate add-to-cart clicks.
- Show a cart summary after adding.
- Suggest related products at the right moment.
- Improve add-to-cart clarity.
- Reduce cart abandonment.
- Show an upsell after adding.
- Confirm on a long product page.
- Improve mobile purchase flow.
- Show shipping progress toward free delivery.
- Increase average order value.
- Reassure the shopper the click worked.
- Show recently viewed items.
- Guide a shopper to checkout.
- Reduce support queries about the cart.
- Improve a store's conversion rate.
- Display a cross-sell view.
