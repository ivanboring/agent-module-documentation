<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Delete Commerce Order Periodically — agent index

**Deletes Commerce orders in bulk via batch operations**. Gated by `administer commerce_order`. Depends on
`commerce`, `commerce_order`. Version **2.0.0**. Core `^9||^10||^11`.

E-commerce/administration — **destructive/irreversible** (orders = financial records + PII): gate to trusted admins
(it is), verify + back up first, mind record-retention obligations. No broader access role.
