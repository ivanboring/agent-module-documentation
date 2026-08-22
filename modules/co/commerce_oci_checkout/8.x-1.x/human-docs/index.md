# Commerce OCI Checkout — manual setup guide

**Commerce OCI Checkout** (`commerce_oci_checkout`) enables **Open Catalog Interface
(OCI) punch-out checkout** on a Drupal Commerce site. OCI is a standard format used
by ERP and purchasing systems — SAP Supplier Relationship Management, ORDIGES
Purchase-to-Pay, Microsoft Dynamics AX and others — to connect to external
punch-out catalogs. With this module your Drupal Commerce store acts as the
**supplier**, and a B2B buyer browses your catalog from *inside their own
procurement system*, then the assembled cart is handed back to that system rather
than being paid for on your site.

The problem it solves is B2B sales through the OCI standard, which is widely used in
Europe. Instead of a normal checkout-and-pay flow, the buyer's procurement portal
"punches out" to your catalog, the buyer selects items, and the cart contents are
returned to the procurement system for approval and purchasing there. It depends on
Drupal **Commerce** (`commerce`) and **Commerce Cart** (`commerce_cart`), and it
provides its own permissions.

This is not a plain works-on-enable module: an OCI integration involves credentials
shared with the buyer's procurement system and mapping your catalog to the OCI
exchange. Because it changes how checkout behaves for punch-out sessions, plan the
integration with the procurement system's operator.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module and its Commerce dependencies.

## How to use it

Once enabled, the module supports the OCI punch-out round trip:

1. The buyer's procurement system opens an authenticated punch-out session to your
   store.
2. The buyer browses your Commerce catalog and builds a cart as usual.
3. On "checkout", instead of paying, the cart is handed back to the procurement
   system in OCI format for purchasing on their side.

## Security and credentials

OCI exchanges are authenticated by a **shared secret / credentials** agreed with the
procurement system. Treat those credentials as secrets: keep them in environment
variables (with DDEV, `ddev dotenv set .ddev/.env --…` then `ddev restart`) and, where
the module supports it, reference them through a Key entity rather than committing
them. Always run the exchange over **HTTPS**, and make sure inbound OCI requests are
validated and scoped to the buyer's system — the punch-out session identifies who is
connecting. The module has no broad access-control role beyond the permissions it
provides, so grant those permissions only to the roles that should operate the OCI
integration.
