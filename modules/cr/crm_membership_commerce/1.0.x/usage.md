<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CRM Membership Commerce bridges Drupal Commerce and the CRM Membership module: buying a
"membership" product creates or renews a CRM membership for the purchasing contact.

---

An event subscriber listens for `commerce_order.place.post_transition` (order placed) and calls
`MembershipCommerce::processOrder()`. For each order item it inspects the purchased product
variation for an entity-reference field targeting `crm_membership_type`; if found, it resolves
the target contact (a `crm_contact` reference on the variation, else the membership type's
`default_target_contact`), resolves the buyer's CRM contact from the order customer (creating a
user↔contact mapping if needed), then renews an existing active/expired membership or creates
and activates a new one. Field discovery is dynamic, so any product-variation bundle can sell
memberships simply by having the right reference field.

Setup is code/config only (no UI, routes, or permissions): add a `crm_membership_type`
reference field to your membership product variation, optionally a `crm_contact` target field,
and configure membership terms in CRM Membership. Note the grant fires on the order **place**
transition (checkout completion), not on a verified payment-received event — with gateways
where placement can precede payment capture, membership may be granted before funds are
confirmed. Anonymous orders (no customer) are skipped.

---

- Grant a CRM membership when a membership product is purchased.
- Renew an existing membership on repeat purchase.
- Sell memberships from any product-variation bundle via a reference field.
- Reference a `crm_membership_type` from a product variation.
- Set a per-variation target contact for the membership.
- Fall back to the membership type's default target contact.
- Auto-create a CRM contact for the buyer if none exists.
- Map a Commerce customer to a CRM contact.
- Activate a new membership's term automatically.
- Prefer renewing an active membership over an expired one.
- Skip anonymous (no-customer) orders.
- Log warnings when membership type or contact can't be resolved.
- Offer multiple membership tiers as different products.
- Integrate a storefront with CRM member management.
- Auto-provision membership on first purchase.
- Extend a lapsed member's term on renewal purchase.
- Trace membership grants via the module's log messages.
