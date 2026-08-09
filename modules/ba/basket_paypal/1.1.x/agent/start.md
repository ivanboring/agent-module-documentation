<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Basket PayPal — agent index

**PayPal payment for the Basket store** (JS SDK Smart Buttons + server-side PayPal Orders API). Provides
permissions. Version **1.1.0**. Core `^10||^11`.

Trust boundary **correct** (verified): order **created server-side** with the amount, payment **captured
server-side** (`ordersCapture()`), status read from PayPal's response and fulfilled only when `COMPLETED` —
does **not** trust a client status. Store PayPal **credentials** as secrets; HTTPS. No access role beyond
permission.
