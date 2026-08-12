<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Manage restaurant menus, orders, KOT/BOT tickets and billing.

---

Restaurant Order Management manages Menu, KOT (Kitchen Order Ticket), BOT (Bar Order Ticket) and billing for restaurants — letting staff build a menu, take table orders, route kitchen/bar tickets and produce bills, as an in-Drupal point-of-sale/ordering workflow.

**Security warning (as shipped, 1.0.1):** 11 order routes are gated by only `_permission: 'access content'` (anonymous on a standard site) with no access check in the controller — so `/restaurant/orders` enumerates all orders (incl. session_ids), `/restaurant-order/view/{id}` is an IDOR, and `/restaurant/order/{id}/status/{status}` lets **any anonymous visitor change any order's status**. **Gate every order route behind real permissions / ownership checks before production use.** Depends on core `field`, `user`, and `views`; supports Drupal 10 and 11.

---

- Manage restaurant menus.
- Take table orders.
- Route KOT/BOT tickets.
- Produce bills.
- WARNING: order routes are anonymous.
- WARNING: any order's status is mutable.
- Gate routes behind permissions.
- Add ownership checks.
- Depend on core `field`, `user`, `views`.
- Support Drupal 10 and 11.
- Handle restaurant ordering.
- Serve as a POS workflow.
- Support Drupal.
- Support Drupal.
- Support Drupal.
