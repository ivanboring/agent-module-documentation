<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Coupon Conditions (commerce_coupon_conditions) — agent index

Additional **condition plugins** for Commerce coupons. Depends on `commerce_promotion`.
Core requirement `^9 || ^10 || ^11`.

Key facts:
- Contributes into Commerce's own condition system, so the new conditions appear alongside the
  built-in ones in the promotion UI and compose with them identically.
- **When a coupon "doesn't work", check the condition logic first.** Commerce evaluates a
  promotion's conditions with a configurable **AND/OR operator**; a coupon failing to apply is far
  more often an operator or per-condition evaluation problem than a problem with the code itself.
- **Test with a real cart.** Conditions depend on order state that is awkward to reason about
  statically — customer history, order totals, item combinations.
- No routes or permissions; `src/Plugin/Commerce/Condition/` plus `config/schema`.
