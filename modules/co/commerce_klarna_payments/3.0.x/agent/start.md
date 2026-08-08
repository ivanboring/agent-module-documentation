<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Klarna Payments — agent index

Drupal Commerce **payment gateway** for **Klarna Payments** (off-site flow + authorization token).
Push endpoint **re-fetches the order from Klarna's authenticated API** (`getOrder`) and acts only on
verified statuses (AUTHORIZED/PART_CAPTURED/CAPTURED) — forged pushes can't mark paid (correct posture).
Depends on `commerce_payment`, `commerce_price`. Version **3.0.0-beta7**. Core `^9.4||^10||^11`.

Store Klarna API credentials as secrets; confirm region/environment (test vs live).
