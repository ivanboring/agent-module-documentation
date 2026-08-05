<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Coupon Conditions adds condition plugins for Commerce coupons, so a discount code can be restricted by rules the core promotion system does not express.

---

Commerce models a promotion with conditions — order total, product, customer — and a coupon as a code that unlocks it. The condition set covers the common cases and stops short of several that marketing teams ask for routinely: first-time customers only, one use per customer, particular customer roles, or combinations with other active promotions. This module contributes additional condition plugins into the same system, so they appear alongside the built-in ones in the promotion UI and compose with them exactly as core's do. Depending on `commerce_promotion`, with `config/schema` for the settings, it targets core `^9 || ^10 || ^11`. The thing that matters when configuring coupon conditions is how they combine: Commerce evaluates a promotion's conditions with a configurable AND/OR operator, and a coupon that appears not to apply is far more often a condition-logic problem than a code problem — so when debugging, check the operator and each condition's own evaluation before suspecting the coupon itself. Testing with a real cart is the reliable way to confirm, since conditions depend on order state that is awkward to reason about statically.

---

- Restrict a coupon to first-time customers.
- Limit a discount code to one use per customer.
- Restrict a coupon by customer role.
- Add conditions core promotions lack.
- Combine conditions with AND or OR.
- Target a discount at a customer segment.
- Restrict a code to a product category.
- Prevent stacking with other promotions.
- Run a targeted marketing campaign.
- Restrict a coupon by order history.
- Limit a code to registered customers.
- Support a loyalty promotion.
- Apply a condition to a coupon only.
- Restrict a discount by region.
- Reduce coupon abuse.
- Support a launch promotion.
- Configure conditions in the promotion UI.
- Extend Commerce's condition system.
