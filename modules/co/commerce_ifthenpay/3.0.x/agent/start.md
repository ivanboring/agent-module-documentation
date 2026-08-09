<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Ifthenpay — agent index

Drupal Commerce **payment gateways for ifthenpay** (Multibanco / MBWay / credit card; `commerce_ifthenpay_mbway`
+ `commerce_ifthenpay_cc` submodules). Depends on `commerce_payment`. Version **3.0.0**. Core `^10||^11`.

Trust boundary **correct** (verified): Multibanco confirms via **server-side API polling** (authoritative);
CC `onReturn()` verifies **`SK = SHA-256(orderId+amount+requestId+CCARD_KEY)`** (strict `!==`) **and** the
amount, throwing on mismatch. Handle keys (mb_key/anti-phishing/cccard_key) as secrets; HTTPS. No access
role.
