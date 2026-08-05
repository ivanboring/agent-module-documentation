<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Purchase Order (commerce_purchase_order) — agent index

"Pay by purchase order" for Drupal Commerce. Depends on `commerce`, `commerce_payment`,
`profile` and core `file`. Composer requires Commerce `^2.4 || ^3.0`.

**Version mismatch to check:** info file says `^10.3 || ^11`, composer says `^10.4 || ^11`. The
**info file** is what Drupal enforces at install.

Key facts:
- **`authorize user purchase orders` is effectively a credit decision.** It controls which
  customers may check out on PO terms — goods ship before payment. Treat granting it as a
  commercial approval, not a UI convenience, and confirm who in the organisation owns that call.
- The order completes **without a transaction**, so reconciliation happens outside Commerce's
  payment flow. Plan how PO orders reach finance and how payment is later recorded.
- Core `file` in the dependency list indicates PO documents can be attached to an order.
- `profile` is required — customer profiles are where the authorisation attaches.
