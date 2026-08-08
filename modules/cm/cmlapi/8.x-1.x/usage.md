<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CML API provides the Commerce ML (CommerceML / 1C) API layer for exchanging catalog and order data with 1C:Enterprise systems.

---

CML API (cmlapi) provides a CommerceML API layer — CommerceML (CML) is the XML exchange standard used
by 1C:Enterprise (a widely-used ERP/accounting system) for syncing catalogs, products and orders. This
module implements the CML exchange protocol so Drupal can exchange commerce data with 1C. It is in the cml
package and provides its own permissions.

Use it as the foundation for 1C:Enterprise ↔ Drupal commerce data exchange (typically with cmlmigrations
for the import side). The exchange endpoint authenticates the 1C client, so the credentials/access for that
endpoint are security-relevant — protect them, serve the exchange over HTTPS, and restrict the exchange
permission. It is an integration/e-commerce data-exchange module; configure the CML exchange.

---

- Provide a CommerceML (1C) API.
- Exchange data with 1C:Enterprise.
- Sync catalogs and orders.
- Implement the CML protocol.
- Provide its own permissions.
- Foundation for 1C exchange.
- Authenticate the 1C client.
- Protect exchange credentials.
- Serve exchange over HTTPS.
- Restrict the exchange permission.
- Import products from 1C.
- Use with cmlmigrations.
- Handle CML XML exchange.
- Integrate 1C commerce data.
- Exchange commerce data.
- Secure the exchange endpoint.
- Sync with 1C.
- Support CommerceML.
- Configure the exchange.
- Connect Drupal to 1C.
