<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce BTCPay — agent index

A Drupal Commerce **payment gateway for BTCPay Server (Bitcoin/crypto)**, offsite redirect. Depends on
`commerce_checkout`, `commerce_payment`. Version **3.0.0-alpha1**. Core `^10||^11`.

E-commerce/payment — **verifies invoice status server-side** on return AND notify (`getInvoice`), explicitly
"we don't trust the return URL". Public notify route safe via re-fetch. API key as a secret, HTTPS. No access
role.
