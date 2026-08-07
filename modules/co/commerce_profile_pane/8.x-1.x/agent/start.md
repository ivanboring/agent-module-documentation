<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Profile Pane (commerce_profile_pane) — agent index

Checkout pane for editing a **Profile** entity during checkout. Version **8.x-1.0**.
Core `^9 || ^10 || ^11`. Depends on `commerce`, `commerce_checkout`, `profile`.

**Profile rather than order fields is the right modelling** — the data persists across orders, so a
returning customer is not asked twice and the information lives on the customer.

**That persistence is why the data question matters:** stored against a person indefinitely, so it
needs a reason, a retention position, and a way for the customer to see and change it — which
Profile supports and a checkout-only form does not imply.

**Checkout is conversion-sensitive.** Every field costs completed orders. Ask what happens if it is
blank; if the answer is "nothing", it does not belong in checkout.