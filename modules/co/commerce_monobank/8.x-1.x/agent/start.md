<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Monobank — agent index

A **Monobank payment gateway for Drupal Commerce** (Ukraine). Depends on `commerce_payment`. Version
**8.x-1.0-alpha5**. Core `^8||^9||^10||^11`.

E-commerce/payment — **authoritative**: confirms via Monobank's server-side **status API**
(`api/merchant/invoice/status`) with the merchant token, not an unverified callback. **X-Token stored in config**
(not Key) — restrict config access / avoid committing; HTTPS. No access role.
