<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Shipping Tracking — agent index

Provides a **form for users to check whether their order has shipped**. Depends on `commerce_shipping`;
provides permissions. Config at `commerce_shipping_tracking.settings`. Version **1.0.3**. Core
`^8||^9||^10||^11`.

**Security:** an order-status lookup shouldn't become an enumeration/disclosure vector — require sufficient
identifying info (ideally scope to the user's own orders) so others' order details can't be guessed. Gate
via its permission.
