<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce add to cart confirmation (commerce_add_to_cart_confirmation) — agent index

Confirmation screen/dialog after a product is added. Requires `commerce_cart`, `commerce_product`
and core **`views`**. Version **2.0.0**. Core requirement `^10.3 || ^11`.

**The Views dependency is the interesting part** — the confirmation's contents are a **view**, so
related products, recently viewed items or a cart summary can be shown **without custom code**.

**Why it matters commercially:** the default is a status message that is often off-screen on a long
product page, so the shopper is unsure the click registered — and either adds twice or abandons.
More importantly, this is the **moment with the most attention in the session**: the shopper has
just committed, and "continue shopping" vs "go to checkout" is the highest-leverage choice on the
store.

**Two things that turn a helpful confirmation into an obstacle:**
1. **It must not block the next action.** A modal requiring dismissal before adding a second item
   makes buying three things *worse* than the status message. "Continue shopping" must be one
   obvious click.
2. **A modal is a focus event.** Trap focus while open, return focus to the add-to-cart button on
   close, close on **Escape**, and announce itself. A confirmation nobody can dismiss with a
   keyboard is a checkout nobody can complete.
