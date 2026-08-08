<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Shipping Tracking provides a form for users to check if their order was already shipped or not.

---

Commerce Shipping Tracking provides a form where users can check the shipping status of their order —
looking up whether an order has already shipped, giving customers a self-service way to see shipment status.
It depends on Commerce Shipping, is configured at `commerce_shipping_tracking.settings`, provides its own
permissions, in the Commerce (contrib) package.

Use it to let customers check shipment status. The security-relevant point: an order-status lookup form must
not become an information-disclosure/enumeration vector — ensure the lookup requires sufficient identifying
info (and ideally that a user can only see their own orders), so it doesn't let anyone enumerate orders or
view others' shipment/order details by guessing an order number. Gate as appropriate with its permissions.
Configure the tracking form.

---

- Let users check shipment status.
- Provide an order-tracking form.
- Show whether an order shipped.
- Depend on Commerce Shipping.
- Provide its own permissions.
- Avoid order enumeration/disclosure.
- Require sufficient identifying info.
- Restrict users to their own orders.
- Not leak others' order details.
- Configure at the settings form.
- Offer self-service tracking.
- Check shipping status.
- Gate the lookup appropriately.
- Configure the tracking form.
- Handle shipment lookup.
- Show order status.
- Track shipments.
- Provide status checks.
- Configure tracking.
- Check orders.
