<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Count builds a report with the number of entities per type.

---

Entity Count builds an **admin report of how many entities exist per type/bundle** — a census of nodes,
users, taxonomy terms, etc. — under `/admin/reports/`, gated by an `access entity count` permission. It
provides its own permissions.

Use it for an at-a-glance entity census. It is an administration/reporting feature. Security note (reviewed):
the counts are computed with **`accessCheck(FALSE)`**, so the totals **include entities the viewer cannot
access** (unpublished nodes, other users' private content). This is a **minor information-disclosure caveat** —
but the output is **aggregate counts only** (no titles/IDs/rows are exposed) and both routes require the
`access entity count` permission (an admin report), so a privileged admin simply sees accurate totals. It's
arguably intentional for a census tool; if per-user exactness ever mattered, honouring access would defeat the
purpose. Gate the permission to trusted admins. Review the report.

---

- Report entity counts per type.
- Give an entity census.
- Show counts under /admin/reports.
- Provide its own permissions.
- Count nodes/users/terms.
- Serve administrators.
- KNOW counts use accessCheck(FALSE).
- Know totals include inaccessible entities.
- Note it's aggregate counts only (no rows).
- Gate the permission to trusted admins.
- Have no access-control role beyond permission.
- Review the report.
- Handle entity counts.
- Count entities.
- Configure the report.
- Show totals.
- Handle the report.
- Census entities.
- Count per type.
- Provide an entity census.
