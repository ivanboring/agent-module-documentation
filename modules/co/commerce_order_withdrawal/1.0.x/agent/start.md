<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Order Withdrawal — agent index

**Public order-withdrawal (droit de rétractation) form** with confirmation email and order log. Depends on
`commerce_order`, `commerce_log`. Provides permissions. Version **1.0.0-alpha1**. Core `^10.3||^11`.

E-commerce/legal-compliance — exposes a **public order action**: verify the requester is entitled to withdraw
**that** order (email/customer/token so no cross-order abuse), rate-limit the endpoint, and log/notify rather than
auto-refund without review.
