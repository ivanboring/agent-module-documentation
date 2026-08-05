<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Direct checkout by URL builds a cart from URL parameters and sends the visitor straight to checkout, skipping the product page.

---

The pattern is a conversion shortcut: an email offering a specific bundle, an ad that should land on payment rather than on a catalogue, a renewal link that puts the same subscription back in the basket, a QR code on packaging that reorders the refill. Each removes several steps between intent and purchase, and on a campaign that is measured in conversion rate those steps are the whole game. This module supplies the endpoint, requiring the four Commerce modules that make up cart and checkout, version **8.x-1.5** on `^8` through `^11`. Access is a `use direct checkout` permission on the endpoint and an administrative permission on the settings, with one defect worth knowing: the administrative permission is declared as **`restrict_access: TRUE`** with an underscore, but Drupal reads the key **`restrict access`** with a space, so the restriction is silently not applied — verified against the permissions service, where it reports as unrestricted. The consequence is cosmetic rather than exploitable, since the permission still has to be granted deliberately, but the warning that should appear beside it on the permissions page does not. Two design points beyond that. **A URL that fills a cart is a URL anyone can craft**, so prices, quantities and any discount must be resolved server-side from the product, never taken from the link. And **campaign links are shared and archived**, so treat them as permanently public: a link that carries a discount is a discount code with no expiry unless one is designed in.

---

- Send a campaign email straight to checkout.
- Build a one-click reorder link.
- Link an ad directly to payment.
- Create a renewal link for a subscription.
- Put a bundle in the basket from a QR code.
- Reduce steps to purchase.
- Support a promotional landing page.
- Create a partner referral link.
- Skip the product page for a known buyer.
- Link to checkout from a printed catalogue.
- Support a sample request flow.
- Build a repeat-order shortcut.
- Improve a campaign's conversion rate.
- Send a pre-filled cart to a customer.
- Support a sales team's quote links.
- Link into checkout from an app.
- Create an event ticket purchase link.
- Support a limited-time offer link.
