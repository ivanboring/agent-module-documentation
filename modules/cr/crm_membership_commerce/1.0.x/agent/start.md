<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CRM Membership Commerce (crm_membership_commerce) — agent index

**Creates/renews CRM memberships from Commerce membership-product purchases.**

- **Version:** 1.0.x  **Core:** >=11.1
- **Depends:** crm_membership, commerce_product, commerce_order
- **Trigger:** `MembershipOrderSubscriber` on `commerce_order.place.post_transition` → `MembershipCommerce::processOrder()` (`src/Service/MembershipCommerce.php`).
- **Logic:** finds a `crm_membership_type` entity-ref field on the variation; resolves target + buyer CRM contact (auto-creates mapping); renews existing active/expired membership or creates + activates a new one.
- **Config:** code/config only — add reference fields to product variations; no routes/permissions/UI.
- **Security:** membership is granted on the order **place** transition (checkout completion), not on a verified payment-captured event (`MembershipOrderSubscriber.php:25`) — for gateways where placement precedes capture, entitlement may precede confirmed payment. Anonymous orders skipped.
