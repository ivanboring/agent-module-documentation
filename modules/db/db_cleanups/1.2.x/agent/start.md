<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DB Cleanups — agent index

Automatically **cleans Drupal cache and watchdog (dblog) tables** on a schedule (control DB growth). Version
**1.2.0**. Core `^9||^10||^11`.

Operations/maintenance — **destructive** table operations (truncating logs discards audit/diagnostic history);
relies on cron/schedule. No access role.
