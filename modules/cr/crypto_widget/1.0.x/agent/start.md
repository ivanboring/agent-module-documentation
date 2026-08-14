<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Crypto Widget (crypto_widget) — agent index
**A block that displays a chosen cryptocurrency's live price from the public Coinbase API.**

- **Version:** 1.0.x
- **Core:** ^8 || ^9 || ^10 || ^11
- **Block plugin:** `crypto_widget` (admin label "Crypto widget", category "Widget").
- **Config:** per-block `crypto_widget` (coin), `currency` (EUR/USD), `period` (minutes).
- **Theme:** `crypto_widget` template; **Library:** `crypto_widget/widget` (JS fetches Coinbase price client-side).
- No routes, no permissions, no server-side stored secrets.

**Security:** Read-only display of public market data. No wallet, private key, secret, or API credential is handled or exposed anywhere in the module. No security findings.
