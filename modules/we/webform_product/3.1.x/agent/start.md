<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Product (webform_product) — agent index

Connects a **webform to Drupal Commerce** — completing the form adds a product to the cart, and the
submission is paid for at checkout. Requires `webform`, `commerce`, `commerce_order`,
`commerce_product`, core `link`. Version **3.1.0**. Core requirement `^10.1 || ^11`.

**Documented from source.** It could not be installed in this wave — enabling it fails on an unmet
configuration dependency (`order_item.add_to_cart`) because Drupal Commerce was not part of the
wave.

**The failure cases are the whole design — ask about these specifically, because they are where a
paid-form integration goes wrong:**
1. a submission whose **payment is abandoned** at checkout;
2. a **payment that succeeds while the submission fails to save**;
3. an order **edited or cancelled** after the submission was accepted;
4. a **duplicate submission** from a shopper who went back.

**The first is the one that matters commercially:** an unpaid submission sitting in the list looking
identical to a paid one is how a registration desk admits people who never paid. **Establish how the
module marks paid versus pending before relying on it.**
