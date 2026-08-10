<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce OCI Checkout makes it possible to do Open Catalog Interface checkout.

---

Commerce OCI Checkout enables **Open Catalog Interface (OCI) punch-out checkout** — a B2B e-procurement
flow where a buyer browses your Commerce catalog from within their procurement system and the cart is handed
back to that system (rather than paid on your site). It depends on Commerce and Commerce Cart, provides its own
permissions.

Use it for B2B OCI punch-out with procurement systems (SAP Ariba, etc.). It is an e-commerce/integration
feature. Security handling: OCI exchanges are typically authenticated by a **shared secret/credentials** with
the procurement system — handle those as **secrets** (env/Key) and use HTTPS; the punch-out session
identifies the buyer's system, so validate/scope inbound OCI requests appropriately. It has no broad
access-control role beyond its permission. Configure the OCI credentials and mapping.

---

- Enable OCI punch-out checkout.
- Support B2B e-procurement.
- Hand the cart back to the buyer's system.
- Depend on Commerce and Commerce Cart.
- Serve procurement systems (SAP Ariba, etc.).
- Browse the catalog from procurement.
- Handle OCI credentials as secrets.
- Use HTTPS.
- Validate/scope inbound OCI requests.
- Provide its own permissions.
- Have no broad access-control role.
- Configure the OCI credentials.
- Handle OCI checkout.
- Punch out.
- Configure the integration.
- Return the cart.
- Handle procurement.
- Do B2B checkout.
- Secure the credentials.
- Provide OCI checkout.
