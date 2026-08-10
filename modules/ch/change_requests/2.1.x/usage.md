<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Change Requests provides change requests for nodes stored field-by-field.

---

Change Requests provides **field-by-field change requests for nodes** — a proposal workflow where a user
suggests edits (stored per field) that a reviewer can approve/reject, rather than editing the node directly.
It provides its own permissions, in the Argue package.

Use it for a suggest-and-review editing workflow. It is an editorial-workflow feature. Its permissions gate who
can propose vs approve changes — grant them appropriately (a proposer shouldn't be able to self-approve if the
workflow is meant to be reviewed), and approved changes apply to the node (following normal node edit access).
It has no other access-control role beyond its permissions. Configure the change-request workflow.

---

- Propose field-by-field node changes.
- Store proposed edits per field.
- Support approve/reject review.
- Provide its own permissions.
- Avoid direct editing.
- Serve editorial review.
- Gate propose vs approve appropriately.
- Prevent self-approval where review is intended.
- Apply approved changes per node edit access.
- Have no other access-control role.
- Configure the workflow.
- Handle change requests.
- Suggest edits.
- Configure the review.
- Review changes.
- Approve changes.
- Handle the workflow.
- Propose edits.
- Set the permissions.
- Provide change requests.
