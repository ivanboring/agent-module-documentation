<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce SEPA — agent index

An **on-site SEPA (Single Euro Payments Area) direct-debit payment gateway** for Drupal Commerce (collect
IBAN + mandate). Depends on `commerce_payment`. Version **8.x-1.1**. Core `^9||^10||^11`.

E-commerce/payment — SEPA is **asynchronous/mandate-based**: an order isn't guaranteed paid at checkout
(settlement happens later via the bank — reconcile out of band). Handle **IBAN/mandate** as sensitive data
(HTTPS). No access role.
