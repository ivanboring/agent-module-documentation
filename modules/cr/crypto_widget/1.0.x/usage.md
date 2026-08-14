<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Crypto Widget provides a configurable block that shows the current price of a selected cryptocurrency, fetched from the public Coinbase API.
---
The module renders a block (`crypto_widget`) that displays the live price of one cryptocurrency in EUR or USD, refreshing on an interval. The block form lets an editor pick the coin (Bitcoin, Ethereum, Tether, Cardano, and a dozen more), the fiat currency, and a refresh period (5/10/30/60 minutes). The selected settings are passed to a `crypto_widget` theme template and to an attached JavaScript library that queries Coinbase's public price endpoint client-side and updates the displayed value; icons come from cryptoicons.co.

Security-wise this is a read-only display widget: it uses only Coinbase's public, unauthenticated price API, and there is no wallet, private key, secret, or API credential handled anywhere in the module — no keys are stored server-side or exposed client-side. All work happens in the browser through the attached library, so the block simply reflects public market data.

Typical setup: enable the module, place the "Crypto widget" block in a region, choose the cryptocurrency, currency, and refresh period, and save.
---
- Show a live Bitcoin price in a block.
- Display Ethereum, Tether, Cardano, Litecoin, and other supported coin prices.
- Choose EUR or USD as the display currency.
- Set how often the price refreshes (5, 10, 30, or 60 minutes).
- Place the price block in any theme region.
- Add several crypto blocks for different coins on one page.
- Show a market ticker in a sidebar or footer.
- Give editors coin/currency/period control without code.
- Display coin icons alongside prices (cryptoicons.co).
- Use public Coinbase price data with no API key required.
- Add a crypto price to a landing or dashboard page.
- Render prices client-side so pages stay cacheable.
- Provide a lightweight price widget without a third-party service account.
- Configure per-block via the standard block placement UI.
- Present price info to anonymous visitors.
