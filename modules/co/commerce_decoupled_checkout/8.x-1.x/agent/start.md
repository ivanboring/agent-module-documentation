<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Decoupled Checkout — agent index

Provides **API endpoints for a decoupled Drupal Commerce checkout** (create carts/complete checkout from a
headless front end). Depends on `commerce`. Version **8.x-1.7**. Core `^9||^10||^11`.

**Security:** authenticate/authorize endpoints — a caller must only access/modify **their own** cart/order
(no enumeration/tampering of others'); keep price/total **server-authoritative** (never trust client prices);
confirm payment server-side; HTTPS. Review the endpoint access model.
