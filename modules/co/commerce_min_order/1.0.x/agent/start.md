<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Minimum Order (commerce_min_order) — agent index

**Enforces a per-store minimum order total on the Commerce cart: injects a progress meter, disables checkout, and validates the minimum on submit.**

- **Version:** 1.0.x
- **Core:** ^9 || ^10 || ^11 · **Package:** Commerce (contrib)
- **Dependencies:** commerce, commerce_cart, commerce_order
- **Mechanism:** `commerce_min_order_form_views_form_commerce_cart_form_default_alter()` adds a `commerce_min_order_progress` themed element (value/min/percentage/remaining), disables `actions.checkout` when under the minimum, and appends `commerce_min_order_form_validation` which calls `$form_state->setError()` if the total is below the minimum. Minimum comes from `field_store_min_order` on the order's Store.
- **Routes / permissions / services:** none; pure form alter + validation + `hook_theme()`.
- **Security:** no routes or anonymous endpoints; enforcement is server-side (re-validated on submit, not client-side only); no user-supplied thresholds (store-field config). No security-relevant surface.
