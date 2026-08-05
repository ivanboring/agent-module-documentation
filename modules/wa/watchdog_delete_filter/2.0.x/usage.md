<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Watchdog Delete Filter allows selective deletion of database log entries — by type, severity or age — instead of core's all-or-nothing "Clear log messages".

---

Core's dblog gives one destructive control: clear everything. That makes routine maintenance impossible without losing the record, and the routine need is real — a misconfigured module writing a warning on every request buries everything else, a resolved incident leaves thousands of identical entries, a noisy channel drowns the entries an administrator actually watches for. Filtering the deletion turns "wipe the log to make it usable again" into "remove the noise and keep the rest". Version **2.0.2** on `^8` through `^11`, depending on core `dblog`. **The security consideration is the one that should be stated first**, because this module makes it easy: **a log is evidence, and selective deletion is the ability to remove specific evidence**. An administrator who can delete entries by type and time window can remove exactly the entries covering a period or an action, and unlike a full clear — which is conspicuous — a filtered deletion leaves a log that looks complete. Any site with an audit obligation should ship logs off the box to somewhere append-only, and treat dblog as a convenience view rather than the record; where dblog *is* the record, this module's permission is an audit-relevant grant and belongs with the same people who hold `administer site configuration`. Two practical notes: **delete by age is the safe operation** and the one worth automating, while delete by type is the one to review; and if the log is unmanageable, the durable fix is the module that is writing to it, not the deletion.

---

- Delete log entries older than a month.
- Remove a noisy channel's entries.
- Clear entries from a resolved incident.
- Keep the log usable without wiping it.
- Delete entries by severity.
- Remove thousands of identical warnings.
- Trim a log before a database export.
- Keep error entries, drop notices.
- Reduce dblog table size.
- Clean up after a misconfigured module.
- Delete a specific type's entries.
- Maintain a long-running site's log.
- Reduce backup size.
- Clear cron noise from the log.
- Keep recent entries only.
- Prepare a log for review.
- Remove debug entries after testing.
- Manage log growth routinely.
