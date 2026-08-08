<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce: Admin Checkout — agent index

Lets Commerce **admins use the checkout form to create orders for customers** (phone/in-person; edit cart;
pay as admin). Depends on `commerce_checkout`, `commerce_order`; `commerce_admin_payment` submodule.
Version **3.1.0**. Core `^10.1||^11`.

**Properly permission-gated:** `access checkout as a different user` / `edit cart items during checkout` /
`configure admin checkout settings` checked before admin checkout. Grant `access checkout as a different
user` only to trusted staff (it lets them order as/for other users + see their cart).
