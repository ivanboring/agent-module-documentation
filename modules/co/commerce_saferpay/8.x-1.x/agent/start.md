<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Saferpay — agent index

Drupal Commerce **payment gateway** for Saferpay (Six Payment Services / Worldline). Hosted payment
page + **API-based assertion**: `onReturn`/`onNotify` confirm the transaction by calling Saferpay's
API rather than trusting redirect parameters, so forged "paid" returns are rejected. `onReturn`
throws `PaymentGatewayException` on error. Version **8.x-1.4**. Core `^8||^9||^10||^11`.

Depends on `commerce_payment`. Configure Saferpay customer/terminal/API-user credentials as secrets;
confirm live/test mode. Card data stays on Saferpay's hosted page.
