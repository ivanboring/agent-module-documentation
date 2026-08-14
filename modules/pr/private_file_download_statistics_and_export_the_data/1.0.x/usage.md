<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Private file download statistics and export the data

On-disk directory `private_file_download_statistics_and_export_the_data`; the real Drupal machine name is `file_download_user_track_export`. The module records private-file download events per user in `file_statistics_reports`, presents a dashboard with per-file download counts and downloader lists, and can export the list of downloading users (with selected user fields) to CSV.

---

# Installing & configuring

- Enable the module; configure which user fields are exported at `/admin/file-statistics/config` and view config menu at `/admin/private-files-statistics/config` (permission `access administration pages`).
- The statistics dashboard is at `/admin/files/statistics` (custom access — administrator role only).
- Data is stored in the `file_statistics_reports` table (serialized `users` list).
- Requires private file downloads to be routed through the site to be tracked.

---

- The dashboard route `/admin/files/statistics` uses `statisticsAccess()` which allows only authenticated users in the `administrator` role.
- SECURITY (broken access control): `get_item` (`/admin/file/get/{fileId}`), `delete_item` (`/admin/file/delete/{fileId}`), `export_items` (`/admin/file/export/{Id}`) and `export_csv` (`/export/csv/{uid}`) are gated only by `_role: 'authenticated'` — NOT the administrator check.
- Any authenticated (even self-registered) user can call `getFileDetails()` and read a file's downloader list, including user EMAIL addresses (PII disclosure).
- Any authenticated user can call `deleteFileStatistics()` — an unconditional `DELETE` of any statistics row by id, with no ownership check and no CSRF token (state-changing GET).
- Any authenticated user can trigger `exportFileStatistics()` to build a CSV of downloaders' emails + configured user fields, then download it via `/export/csv/{uid}`.
- The export CSV filename embeds the current user id, but combined with the open `export_items` route the whole chain leaks other users' PII.
- Fix: gate `get_item`/`delete_item`/`export_items`/`export_csv` with the same admin `_custom_access` (or a dedicated permission) as the dashboard, and use a POST + CSRF token (or a proper form) for deletion.
- DB queries use parameterised conditions — no SQL injection observed.
- The tracking `hook` uses `unserialize(..., ['allowed_classes' => FALSE])` (safe); the controller uses plain `unserialize()` on the module-written `users` field (not attacker-controlled).
- `fileStatisticsExportCsv()` reads files from `public://file_statistics_report_download/` by a name built from the current uid + route arg.
- The exported CSV is written into the PUBLIC files directory (`public://...`), so generated exports with emails are web-reachable if the path/filename is known.
- Config form and menu use `access administration pages`, a broad permission for the settings pages.
- The install file defines the `file_statistics_reports` schema.
- Deletion redirects to the dashboard after running.
- Intended for admins auditing who downloads gated/private files.
- Recommend restricting all statistics routes to the administrator/custom-access check before production use.
