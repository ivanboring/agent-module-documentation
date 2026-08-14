<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# file_download_user_track_export — agent orientation

Tracks private-file downloads per user; dashboard + CSV export of downloader emails. (On-disk dir `private_file_download_statistics_and_export_the_data`; machine name `file_download_user_track_export`.)

- Version 1.0.x, core `^8||^9||^10`. Dashboard `/admin/files/statistics` = administrator-only via `statisticsAccess()`.
- FINDING (broken access control / PII disclosure + tampering): `/admin/file/get/{fileId}`, `/admin/file/delete/{fileId}`, `/admin/file/export/{Id}`, `/export/csv/{uid}` are gated only by `_role: authenticated`. Any logged-in user can read downloader emails, delete stats rows (state-changing GET, no CSRF), and export PII. See routing.yml + FileDownloadUserTrackExportController.
- Exports written to `public://` (web-reachable). Queries parameterised (no SQLi). Fix: apply the admin custom-access to all stats routes; POST+CSRF for delete.