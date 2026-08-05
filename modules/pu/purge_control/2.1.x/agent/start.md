<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Purge control (purge_control) — agent index

Pause and resume the **Purge** pipeline. Depends on `purge ^3.0.0`. PHP >= 8.1.
Core requirement `^10 || ^11`.
Settings at `/admin/config/development/performance/purge/purge-control`
(`administer site configuration`).

Key facts:
- **Drush commands (`src/Drush/`) are the point.** The value is scripting: pause → run the bulk
  operation → resume, inside a deployment or migration job. A UI-only pause is easy to forget.
- What it prevents: a bulk resave, migration or import queues invalidations at machine speed,
  which can earn a **rate-limit ban at the CDN** or cause a cache stampede when the edge refetches
  everything at once.
- **Plan a full cache clear after resuming.** Changes made while paused were not invalidated, so
  the external cache is stale for them — resuming does not backfill.
- Pairs naturally with `resave_all_nodes` (wave 60) and `eme`/migration work: those are precisely
  the operations that flood Purge.
- Surface: `src/Services/` (pause state), `src/Plugin/` (pipeline integration), `src/Form/`,
  `src/Drush/`, `config/install`, `config/schema`.
