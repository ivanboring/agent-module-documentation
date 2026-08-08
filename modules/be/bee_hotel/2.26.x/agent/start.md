<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# BEE Hotel — agent index

A **hotel/B&B booking suite** on BAT + BEE + **Drupal Commerce** (rooms, availability, seasonal/dynamic
pricing via `beehotel_pricealterator`, guest messages, iCal, orders; many submodules). Provides permissions.
Config at `beehotel.admin_settings`. Version **2.26.3**. Core `^9.4||^10.2||^11`.

E-commerce/booking — **payment delegated to Drupal Commerce** (server-authoritative gateways; no own
payment-callback trust boundary). Large stack (BAT/Commerce/currencyapi) — keep updated, review public
booking routes, gate admin/pricing perms.
