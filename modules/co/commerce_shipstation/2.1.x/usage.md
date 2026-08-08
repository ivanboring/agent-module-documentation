<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce ShipStation integrates Commerce with ShipStation, an online multi-channel order fulfillment system, exposing an authenticated endpoint for ShipStation to fetch/update orders.

---

Commerce ShipStation integrates Drupal Commerce with ShipStation — an online multi-channel order-
fulfillment/shipping platform. It exposes an endpoint that ShipStation calls to fetch orders for
fulfillment and post shipment/tracking updates back, so orders flow between the store and ShipStation. It
depends on core Image and is configured at `commerce_shipstation.shipstation_admin_form`.

The endpoint is authenticated: it requires HTTP Basic auth with a dedicated username/password configured in
the module (explicitly "NOT your ShipStation account username"), plus a custom access check — so ShipStation
authenticates to the endpoint before reading/writing order data. The security-relevant points: store the
endpoint username/password (and any ShipStation API key) as secrets, **serve the endpoint only over HTTPS**
(Basic-auth credentials and order data — customer names/addresses — traverse it), and rotate the credentials
if leaked. It is an e-commerce integration; configure the ShipStation credentials and the endpoint.

---

- Integrate Commerce with ShipStation.
- Sync orders for fulfillment.
- Expose an authenticated ShipStation endpoint.
- Require Basic auth with a dedicated username/password.
- Post shipment/tracking updates back.
- Depend on core Image.
- Configure at the shipstation admin form.
- Store endpoint credentials as secrets.
- Serve the endpoint over HTTPS.
- Rotate credentials if leaked.
- Fetch orders for ShipStation.
- Handle multi-channel fulfillment.
- Protect customer order data in transit.
- Authenticate ShipStation to the endpoint.
- Configure the ShipStation connection.
- Support order fulfillment.
- Handle shipping updates.
- Secure the endpoint.
- Sync tracking numbers.
- Integrate fulfillment.
