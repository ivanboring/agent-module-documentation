<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Delete Users CSV deletes users by email address from a CSV.

---

Delete Users CSV **bulk-deletes users listed by email address in a CSV** — reading a CSV of emails and
deleting the matching user accounts in a batch, for large user-base cleanup. It is in the Other package.

Use it for bulk user removal. It is an administration tool gated by the **`administer users`** permission (the
appropriate strong permission for deleting accounts). Security/operational caution: deleting users is
**destructive and irreversible** (and cascades to their content per your account-cancellation settings) — verify
the CSV carefully, back up first, and keep `administer users` to trusted admins. It has no unauthenticated
surface. Upload the CSV and run the deletion.

---

- Bulk-delete users from a CSV.
- Match users by email.
- Delete in a batch.
- Gate it by 'administer users'.
- Serve user-base cleanup.
- Run as an admin.
- BE destructive and irreversible.
- Cascade per account-cancellation settings.
- Verify the CSV + back up first.
- Keep 'administer users' to trusted admins.
- Have no unauthenticated surface.
- Upload the CSV and run.
- Handle user deletion.
- Delete users.
- Configure the CSV.
- Remove users.
- Handle the batch.
- Clean up users.
- Verify before deleting.
- Provide CSV user deletion.
