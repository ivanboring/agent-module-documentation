<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce GoCardless Client — agent index

A Drupal Commerce integration for **GoCardless (Direct Debit / bank payments)**. Depends on `commerce_payment`,
`commerce_product`, `commerce_cart`, `commerce_checkout`. Version **2.1.6**. Core `^10||^11`.

E-commerce/payment — bank debits are **asynchronous** (not guaranteed paid at checkout — reconcile via
**signed webhooks**; verify the signature). API token/webhook secret as secrets, HTTPS. No access role.
