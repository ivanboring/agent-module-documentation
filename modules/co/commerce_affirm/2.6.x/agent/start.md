<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Affirm — agent index

Integrates **Affirm point-of-sale consumer financing (BNPL)** into Drupal Commerce (Affirm payment gateway).
Depends on `commerce_payment`. Config at `commerce_affirm.settings`. Version **2.6.0**. Core `^9.3||^10||^11`.

**Security:** store Affirm public/private API keys as **secrets**; HTTPS; relies on Affirm's **server-side
authorize/capture** (server confirms the charge against Affirm's authenticated API using the private key +
checkout token — not a client-side "success"). Confirm sandbox vs live.
