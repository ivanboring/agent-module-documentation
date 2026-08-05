<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Download Count (download_count) — agent index

Counts downloads of files in **private** file fields. Depends on core `field` and `file`.
Core requirement `^10.3 || ^11`. Configure at `/admin/config/media/download-count`
(`configure: download_count.file_settings`).

Key facts:
- **Private file fields only.** Public files are served straight by the web server without
  bootstrapping Drupal, so there is nothing to hook. If counts stay at zero, the first thing to
  check is that the field uses the private file system. Counting is done by
  `src/EventSubscriber/DownloadCountSubscriber.php`.
- Storage (from `hook_schema()` in `download_count.install`) — one row per download:
  `fid`, `uid`, entity type, entity id, **`ip_address`**, **referrer URI**, timestamp;
  indexed on `uid` and `ip_address`. A second `_cache` table holds per-file per-day totals,
  maintained by `download_count_cron()` and the `DownloadCountCacheProcessor` queue worker so
  reports read aggregates, not raw events.
- Routes:

  | Route | Path | Permission |
  |---|---|---|
  | `download_count.file_settings` | `/admin/config/media/download-count` | `administer site configuration` |
  | `download_count.clear` | `…/download-count/clear` | `administer site configuration` |
  | `download_count.reports` | `/admin/reports/download-count` | `view download counts` |
  | `download_count.details` | `/admin/reports/download-count/{entry}/details` | `view download counts` |
  | `download_count.reset` | `/admin/reports/download-count/{entry}/reset` | `view download counts` |
  | `download_count.export` | `/admin/reports/download-count/{entry}/export` | `view download counts` |

- Permissions declared: `view download counts`, `reset download counts`,
  `export download counts`, `skip download counts`.
- **Two of those permissions are never enforced.** `reset download counts` and
  `export download counts` appear only in `download_count.permissions.yml` — grep finds them in
  no route, controller or form. Both the reset and the export route require
  `view download counts`, and neither form adds its own check. So a role intended as read-only
  reporting can wipe counters and export the full per-download log (uid, IP address, referrer).
  Grant `view download counts` as if it were `reset` + `export`.
- **`skip download counts` stops counting but not logging.** `download_count.module:44-47`
  checks the permission and then writes a watchdog notice naming the uid, the file and the IP
  address. Exempting staff from the statistics still records their downloads in dblog.
- Assign `skip download counts` to staff/admin roles so internal traffic does not pollute the
  figures — subject to the logging caveat above.
- Display surface: blocks `TopDownload` and `RecentDownload`, a field formatter with
  `templates/download-count-file-field-formatter.html.twig` and a Peity sparkline
  (`js/peity-vanilla.min.js`, `js/download_count_chart.js`), Views integration
  (`download_count.views.inc`), and Rules hooks (`download_count.rules.inc`).

**Privacy:** each row stores user id, IP address and referrer — identifiable data. Sites under
GDPR should decide a retention period and cover this in the privacy notice; `hook_uninstall()`
drops the tables, but nothing prunes them while the module is enabled.
