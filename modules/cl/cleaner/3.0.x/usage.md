<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cleaner runs scheduled housekeeping — clearing caches, trimming log tables, optimising the database — on a schedule rather than when someone remembers.

---

A long-running Drupal site accumulates: cache tables that grow between clears, watchdog rows, session records, orphaned files. None of it is urgent and all of it eventually matters, which is exactly the kind of work that gets deferred until a backup takes an hour or a query slows down. This module puts it on a schedule: a settings form at `/admin/config/system/cleaner` under `administer site configuration` chooses what runs and how often, with `src/EventSubscriber` triggering the work and `src/Event` letting other modules join in. It requires PHP 8.1+ and core `^10 || ^11`, with no module dependencies; the release is **3.0.0-alpha1**. Two things to settle before enabling it. Clearing caches on a schedule is not free — a cache clear on a busy site causes a rebuild storm, so the schedule wants to be off-peak and infrequent rather than hourly. And anything that deletes rows deserves the same treatment as `revision_cleanup` (wave 62): decide the retention policy deliberately, because log and session data can be the record an incident investigation depends on, and deletion is irreversible.

---

- Clear caches on a schedule.
- Trim watchdog rows automatically.
- Optimise database tables periodically.
- Keep a long-running site tidy.
- Reduce database growth.
- Schedule maintenance off-peak.
- Shrink backups by pruning logs.
- Clear stale session records.
- Automate routine housekeeping.
- Reduce manual maintenance work.
- Keep cache tables from growing unbounded.
- Free disk space on a small host.
- Improve query performance over time.
- Run cleanup through cron.
- Extend cleanup via events.
- Reduce time to restore a backup.
- Apply a retention policy to logs.
- Keep a legacy site manageable.
