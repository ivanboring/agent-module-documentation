<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Enzona — agent index

**Drupal Commerce Enzona gateway (Cuba)**. Version **2.0.4**. Core `^10||^11`.

**SECURITY (2.0.4):** `/commerce_enzona/webhook` is `_access: TRUE` and completes/places the order from a request-body `status` — no signature, no server-side re-fetch (order-fulfillment forgery). Public debug routes leak the token prefix + can create a live payment. Harden (verify webhook + server-side status re-fetch; remove debug routes) before production. Depends on `commerce`/`commerce_payment`/`commerce_order`/`commerce_checkout`.