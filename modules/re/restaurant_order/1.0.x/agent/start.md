<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Restaurant Order Management — agent index

**Restaurant menu/order/KOT/BOT/billing workflow**. Version **1.0.1**. Core `^10||^11`.

**SECURITY (1.0.1):** 11 order routes are `_permission: 'access content'` (anonymous) with NO controller access check — `/restaurant/orders` enumerates all orders + session_ids, `/restaurant/order/{id}/status/{status}` lets anonymous mutate any order's status (verified live: 200/302, not 403). Gate behind real permissions. Depends on core `field`/`user`/`views`.