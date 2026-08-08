<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Klarna Checkout — agent index

Drupal Commerce **Klarna Checkout** integration (Klarna's hosted checkout). Confirms order/payment status
by **querying Klarna's authenticated API** (`getOrder`); `onNotify` acts on the real state — forged
callbacks can't mark paid (correct posture). Depends on `commerce_payment`. Version **3.0.0**. Core
`^10.3||^11`.

Store Klarna API credentials as secrets; confirm test vs live.
