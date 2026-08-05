<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Watchdog Delete Filter (watchdog_delete_filter) — agent index

Selective deletion of **dblog** entries by type, severity or age — instead of core's all-or-nothing
"Clear log messages". Depends on core `dblog`. Version **2.0.2**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**State the security consideration first, because this module makes it easy: a log is evidence, and
selective deletion is the ability to remove specific evidence.** An administrator who can delete by
type and time window can remove exactly the entries covering a period or an action — and unlike a
**full clear**, which is conspicuous, a filtered deletion **leaves a log that looks complete**.

- Any site with an audit obligation should **ship logs off the box to somewhere append-only** and
  treat dblog as a convenience view rather than the record.
- Where dblog **is** the record, this module's permission is an **audit-relevant grant** and belongs
  with the same people who hold `administer site configuration`.

**Two practical notes:**
- **Delete by age is the safe operation** and the one worth automating; delete by type is the one to
  review.
- If the log is unmanageable, **the durable fix is the module writing to it**, not the deletion.
