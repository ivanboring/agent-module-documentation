<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce ShipStation — agent index

Integrates Drupal Commerce with **ShipStation** (multi-channel order fulfillment) — an endpoint ShipStation
calls to fetch orders + post shipment/tracking updates. **HTTP Basic auth** (dedicated username/password,
not the ShipStation account) + custom access check. Depends on core `image`. Config at
`commerce_shipstation.shipstation_admin_form`. Version **2.1.0-beta3**. Core `^9.1||^10||^11`.

**Security:** store endpoint credentials as secrets; **serve over HTTPS** (Basic auth + order PII traverse
it); rotate if leaked.
