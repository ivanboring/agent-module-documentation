<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Order Amend — agent index

**Admin forms to edit placed orders** (swap/add/remove items, coupons) with **audit logging** and event
extensibility. Depends on `commerce_order`, `commerce_promotion`. Provides permissions. Version **1.0.0**. Core
`^10||^11`.

E-commerce/order-management — **privileged, financially-sensitive**: gate to trusted order admins; changes are
audit-logged; ensure totals/payment recompute. No access role beyond permission.
