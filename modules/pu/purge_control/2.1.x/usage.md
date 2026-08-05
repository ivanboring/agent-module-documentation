<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Purge control adds a pause switch to the Purge pipeline, so cache invalidation can be suspended during a bulk operation and resumed afterwards.

---

Purge's job is to tell an external cache — a CDN, Varnish — what to invalidate, and it does that faithfully: every entity save queues invalidations, which is right during normal editing and wrong during a migration, a bulk resave or a large import, when hundreds of thousands of invalidations are queued and forwarded in minutes. The consequences range from a rate-limit ban at the CDN to a cache stampede as the edge refetches everything at once. The usual workaround is disabling Purge and hoping to remember to re-enable it. This module makes pausing a first-class operation: a settings form at `/admin/config/development/performance/purge/purge-control` behind `administer site configuration`, `src/Services` implementing the pause state, `src/Plugin` integrating with Purge's pipeline, and — the part that matters for automation — Drush commands in `src/Drush`, so a deployment or migration script can pause, do its work, and resume. Requirements are PHP 8.1+ and Purge `^3.0.0`, with core `^10 || ^11`. The operational caution is the obvious one: invalidations that happen while paused are not deferred but skipped in the sense that matters, so plan a full cache clear after resuming.

---

- Pause purging during a content migration.
- Avoid a CDN rate-limit ban during a bulk import.
- Suspend invalidation while resaving all nodes.
- Resume purging after a deployment.
- Pause and resume from a Drush script.
- Prevent a cache stampede after bulk edits.
- Keep Purge configured but idle during maintenance.
- Avoid disabling Purge by hand.
- Control purging from a deployment pipeline.
- Reduce CDN costs during a large operation.
- Pause before a scheduled bulk update.
- Stop invalidation while debugging.
- Protect an external cache from a flood.
- Coordinate purging with a release window.
- Resume automatically after a job completes.
- Avoid forgetting to re-enable Purge.
- Reduce load on a shared CDN account.
- Support a scripted migration workflow.
