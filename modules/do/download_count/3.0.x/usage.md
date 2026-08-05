<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Download Count records every download of a file held in a **private** file field, and reports the totals through admin screens, blocks, Views and a field formatter with an inline chart.

---

The private-files constraint is the whole design. Drupal serves public files directly from the web server, where PHP never runs and nothing can be counted; private files are streamed through Drupal, so a subscriber can observe each delivery. `DownloadCountSubscriber` is that observer, and its `hook_schema()` shows exactly what is stored per event: `fid`, `uid`, the entity type and id the file was attached to, `ip_address`, the referrer URI, and a timestamp — with indexes on uid and ip_address. A second `_cache` table aggregates counts per file per day, kept current by `download_count_cron()` and a `DownloadCountCacheProcessor` queue worker so reports do not scan the raw event log. The reporting surface is generous for a module this size: two blocks (`TopDownload`, `RecentDownload`), a field formatter with a `download-count-file-field-formatter.html.twig` template and a Peity-based sparkline, Views integration via `download_count.views.inc`, a report at `/admin/reports/download-count` with per-entry detail and reset, and Rules integration in `download_count.rules.inc`. Permissions separate the roles cleanly: `view download counts`, `reset download counts`, `export download counts`, and `skip download counts` — the last one exempting a role from being counted, which is how you keep staff and crawlers out of the figures. Note that per-download rows carry user id, IP address and referrer, which is identifiable data with a retention question attached.

---

- Count downloads of a private file attached to a node.
- Show the most-downloaded files in a block.
- Show recently downloaded files in a block.
- Display a download count next to a file field.
- Render a sparkline of downloads over time.
- Build a Views report of download activity.
- Exclude staff from download statistics by role.
- Reset the counter for a single file.
- Export download figures for reporting.
- Measure demand for a document library.
- Prove distribution numbers for a publication.
- Identify files nobody downloads.
- Report downloads per attached entity.
- Restrict who can see download reports.
- Trigger a Rules action on download activity.
- Keep counting accurate behind a page cache.
- Aggregate daily totals without scanning raw events.
- Track a paywalled file's usage.
- Support a funder's usage-reporting requirement.
- Decide which resources deserve promotion.
