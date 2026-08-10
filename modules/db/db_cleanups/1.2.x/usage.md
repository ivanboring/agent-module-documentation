<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DB Cleanups automatically cleans Drupal cache and watchdog tables.

---

DB Cleanups **automatically cleans cache and watchdog (dblog) tables** — truncating/trimming those tables
on a schedule to control database growth (cache_* and the dblog `watchdog` table can balloon on busy sites). It
is in the Custom package.

Use it to keep cache/log tables from bloating. It is an operations/maintenance tool. Two cautions: it performs
**destructive table operations** (truncating logs discards audit/diagnostic history — keep that in mind for
incident investigation), and it relies on **cron/schedule** running; treat it as an admin maintenance task and
configure what it cleans and how often. It has no access-control role. Configure the cleanup schedule.

---

- Clean cache and watchdog tables.
- Control database growth.
- Trim cache_* and dblog.
- Run on a schedule.
- Truncate bloated tables.
- Serve operations/maintenance.
- PERFORM destructive table operations.
- Know truncating logs discards audit history.
- Rely on cron/schedule.
- Have no access-control role.
- Configure the cleanup schedule.
- Handle DB cleanup.
- Clean tables.
- Configure cleanups.
- Trim logs.
- Handle the cleanup.
- Clean cache.
- Reduce DB size.
- Set the schedule.
- Provide DB cleanup.
