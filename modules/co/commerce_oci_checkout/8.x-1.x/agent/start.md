<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce OCI Checkout — agent index

Enables **Open Catalog Interface (OCI) punch-out checkout** for B2B procurement (browse the catalog from a
procurement system; cart handed back). Depends on `commerce`, `commerce_cart`. Provides permissions. Version
**8.x-1.5**. Core `^10.1||^11`.

E-commerce/integration — OCI exchanges authenticated by a **shared secret/credentials** (handle as secrets,
HTTPS; validate inbound requests). No broad access role beyond permission.
