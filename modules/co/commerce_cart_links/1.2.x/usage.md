<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Cart Links builds URLs that add products to a customer's cart, so a campaign email, a printed QR code or a partner's site can drop someone straight into a filled basket.

---

The pattern is old and still effective: a "reorder my usual" link in an email, a QR code on packaging that adds the refill, a bundle link that fills a cart with six items in one click. Drupal Commerce 1 had this feature and it was missed; this is the Commerce 3 version, depending on `commerce_cart` and configured at `/admin/commerce/config/orders/cart-links`, version **1.2.0** on `^9 || ^10 || ^11`. There is also a share-cart modal, so a customer can generate a link to their own basket and send it to a colleague for approval — a genuinely useful B2B flow. The access model is layered and worth understanding: the `/cart-links` route runs a custom access check that validates the query parameters, checks the **referer**, and requires the **`view commerce cart links`** permission, with a separate `generate cart share links` permission for the share feature and a `restrict access: true` administer permission for settings. That referer check is what stops arbitrary sites from firing cart manipulations at your customers, so if links must work from email clients or QR codes, confirm the allowed-referer configuration covers those cases — a referer is frequently absent entirely. The `existing` parameter accepts `new`, `empty` and `delete`, the last of which discards the customer's current cart, so decide deliberately whether campaign links should be able to do that.

---

- Add a product to the cart from an email.
- Build a reorder link for a customer.
- Fill a cart from a QR code.
- Create a bundle link for a campaign.
- Let a partner link into your store.
- Share a cart with a colleague.
- Support a B2B approval flow.
- Add several products in one click.
- Link to a cart from a printed catalogue.
- Replace a cart on a campaign click.
- Start a new cart from a link.
- Add a product with a set quantity.
- Support a repeat-purchase reminder.
- Link into a specific store.
- Redirect after adding to the cart.
- Support a promotional landing page.
- Simplify a reorder workflow.
- Enable one-click sample requests.
