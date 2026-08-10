<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Iranian Payment Pack — agent index

A **collection of Iranian bank payment gateways for Drupal Commerce** (Saman/SEP, others). Depends on
`commerce`, `commerce_payment`. Version **1.0.0-beta3**. Core `^10.1||^11`.

E-commerce/payment — reviewed Saman gateway **confirms the transaction server-side with the bank**
(`VerifyTransaction`) before completing (not the client return alone). Merchant credentials as secrets, HTTPS;
verify each gateway's flow per version. No access role.
