<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Delete Commerce Order Periodically deletes Commerce orders in bulk via batch operations.

---

Delete Commerce Order Periodically **bulk-deletes Commerce orders** — removing commerce orders via batch
operations (e.g. periodic cleanup of old/test orders). The admin form is gated by the `administer commerce_order`
permission. It depends on Commerce and Commerce Order.

Use it to purge orders in bulk. It is an e-commerce/administration tool with an important caution: deleting orders
is **destructive and irreversible**, and orders contain **financial records and customer PII** — so the operation
is correctly gated by `administer commerce_order` (keep that permission to trusted admins), verify what will be
deleted before running, back up first, and consider legal **record-retention** obligations (you may be required to
keep order records). It has no broader access-control role. Configure the deletion criteria.

---

- Bulk-delete Commerce orders.
- Run batch order deletion.
- Purge old/test orders.
- Gate the form by 'administer commerce_order'.
- Depend on Commerce + Commerce Order.
- Serve e-commerce/administration.
- BE destructive and irreversible (orders = financial records + customer PII).
- Keep the permission to trusted admins + verify before running + back up first.
- Consider legal record-retention obligations.
- Have no broader access-control role.
- Configure the deletion criteria.
- Handle order deletion.
- Delete orders.
- Configure the deletion.
- Purge orders.
- Handle the batch.
- Remove orders.
- Clean up orders.
- Restrict the permission.
- Provide order deletion.
