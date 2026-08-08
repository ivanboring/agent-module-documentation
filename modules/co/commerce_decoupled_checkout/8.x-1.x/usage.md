<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Decoupled Checkout provides API endpoints for a decoupled Drupal Commerce experience.

---

Commerce Decoupled Checkout provides API endpoints for a decoupled Drupal Commerce checkout — so a
separate front end (JS app, mobile) can create carts, add items and complete checkout via API rather than
Drupal's built-in checkout flow. It depends on Drupal Commerce, in the Commerce (contrib) package.

Use it to power a headless Commerce checkout. Security-relevant points for a decoupled checkout API:
**authenticate and authorize the endpoints appropriately** — creating a cart/guest order is normally fine,
but ensure a caller can only access/modify **their own** cart/order (not enumerate or manipulate others'
orders), that price/total calculation stays **server-authoritative** (never trust client-supplied prices),
and that any payment is confirmed server-side. Operate over HTTPS. Review the endpoint access model for your
setup. It is an e-commerce/web-services feature. Configure the API and access.

---

- Provide decoupled Commerce checkout API.
- Create carts/orders via API.
- Power a headless front end.
- Depend on Drupal Commerce.
- Authenticate/authorize the endpoints.
- Scope access to the caller's own cart/order.
- Not let callers touch others' orders.
- Keep price/total calculation server-authoritative.
- Never trust client-supplied prices.
- Confirm payment server-side.
- Operate over HTTPS.
- Review the endpoint access model.
- Configure the API.
- Handle headless checkout.
- Secure the checkout API.
- Handle the endpoints.
- Configure access.
- Handle carts via API.
- Complete checkout via API.
- Handle decoupled commerce.
