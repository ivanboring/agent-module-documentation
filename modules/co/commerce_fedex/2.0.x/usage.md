<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce FedEx calculates live FedEx shipping rates during Drupal Commerce checkout, with submodules for the two consignment types that need special declarations — dangerous goods and dry ice.

---

Live rating is the point: rather than a flat fee or a weight band, the cart's actual contents and destination are sent to FedEx and the returned rates become the shipping options a customer chooses from. `FedExRequest` builds the call, `FedExAddressResolver` resolves the origin and destination addresses, and `src/Event` provides the hooks a real deployment needs — rate filtering, surcharges and packaging decisions are always site-specific. The two submodules cover regulated shipping: **commerce_fedex_dangerous** for hazardous materials and **commerce_fedex_dry_ice** for dry-ice shipments, both of which carry declaration requirements that are legal obligations rather than configuration. Requirements are `commerce_shipping ~2 || ^3`, Commerce `^2.32 || ^3`, `whatarmy/fedex-rest`, and — the one to check on a host — **`ext-soap`**, the PHP SOAP extension, which is not enabled everywhere. The release is 2.0.0-alpha2. Two practical notes: FedEx credentials are live secrets belonging in environment variables, and rating on every cart change means an external call in the checkout path, so caching and a fallback rate matter — a checkout that fails because FedEx is slow is worse than one showing an estimate.

---

- Show live FedEx rates at checkout.
- Rate by actual cart weight and destination.
- Offer several FedEx service levels.
- Ship dangerous goods with declarations.
- Ship dry-ice consignments.
- Replace flat-rate shipping with live rates.
- Filter returned rates with an event subscriber.
- Add a handling surcharge to rates.
- Support international shipping quotes.
- Resolve origin addresses per warehouse.
- Show delivery estimates to customers.
- Reduce shipping cost errors.
- Support regulated shipments.
- Integrate with Commerce Shipping.
- Rate multiple packages per order.
- Provide a fallback when rating fails.
- Support a US or international retailer.
- Compare FedEx services at checkout.
