<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Purchase Order adds "pay by purchase order" to Drupal Commerce checkout — the B2B payment method where an authorised customer supplies a PO number and is invoiced later rather than paying at checkout.

---

Business-to-business selling works differently from consumer selling: an approved account places an order against a purchase order number, goods ship, and payment follows on agreed terms. Commerce's payment gateways are built around taking money at checkout, so this supplies the alternative — a payment method that records the PO reference and completes the order without a transaction. The permission is the interesting part and the reason this is more than a form field: **`authorize user purchase orders`** controls which customers may pay this way, so PO terms are extended deliberately per account rather than offered to everyone. That single permission is effectively a credit decision. Dependencies are substantial — `commerce`, `commerce_payment`, `profile` and core `file` (the last suggesting PO documents can be attached) — with composer requiring Commerce `^2.4 || ^3.0` and core `^10.3 || ^11`. Note the mismatch worth checking: the info file says `^10.3 || ^11` while composer says `^10.4 || ^11`; the info file is what Drupal enforces at install.

---

- Let approved customers pay by purchase order.
- Support B2B checkout without card payment.
- Record a PO number against an order.
- Invoice a customer after fulfilment.
- Restrict PO payment to authorised accounts.
- Attach a PO document to an order.
- Support net payment terms.
- Sell to public-sector buyers.
- Handle a procurement workflow.
- Reconcile orders against purchase orders.
- Offer PO alongside card payment.
- Support a wholesale customer base.
- Extend credit terms per account.
- Complete an order without a transaction.
- Support university or agency purchasing.
- Route PO orders to a finance team.
- Provide a familiar B2B checkout.
- Track outstanding invoiced orders.
