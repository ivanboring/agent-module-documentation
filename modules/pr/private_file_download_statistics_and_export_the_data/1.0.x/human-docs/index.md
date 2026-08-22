# Private file download statistics and export the data — manual setup guide

**Private file download statistics and export the data** (machine name
`file_download_user_track_export`) records who downloads your **private** files
and how often, shows the results on an admin dashboard, and can export the data —
including downloader email addresses and other selected user fields — to CSV.

For each tracked download it captures the node ID and title, the file ID and
filename, the downloading user's email with the latest timestamp, and a running
count of how many times that file has been downloaded. From the dashboard you can
view the detail for a file, delete a file's statistics, or export them to CSV.

A couple of practical notes up front. Downloads are only counted when files are
served through the site's **private file system**, so this module has no effect
on public files. Downloads by the superuser (user 1) are deliberately not
counted. And note that the on-disk project directory
(`private_file_download_statistics_and_export_the_data`) differs from the actual
Drupal machine name you enable and configure, which is
`file_download_user_track_export`.

> **Important security note.** This project is **not covered by Drupal's security
> advisory policy**, and its statistics routes have known access-control
> weaknesses: several of them (viewing a file's downloader list, deleting a
> statistics row, and exporting the CSV) are gated only to *any authenticated
> user* rather than to administrators. Because the exported data includes other
> users' email addresses (PII), treat this module as suitable only for trusted,
> internal, admin-only sites — or harden the routes first — and avoid it on sites
> where untrusted users can register accounts. See "Before you rely on it" below.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — tell the module which private file
   field to track and which user fields to include in exports.

## Where it lives in the admin menu

- **Settings:** `/admin/file-statistics/config` (a second config menu link is at
  `/admin/private-files-statistics/config`) — configure the private file field to
  track and the user fields to export.
- **Dashboard:** `/admin/files/statistics` — view, delete, and export per-file
  download statistics.

## Before you rely on it

The dashboard itself is restricted to the administrator role, but the underlying
"get", "delete", "export", and "CSV download" routes are gated only by the
*authenticated* role. On a site where people can self-register, that means a
logged-in non-admin could potentially read a file's list of downloaders
(including emails), delete statistics rows, or trigger a PII export. Exported CSV
files are also written into the **public** files directory, so a generated export
can be web-reachable if its path is known. Only deploy this as-is where every
authenticated user is trusted, and consider restricting all statistics routes to
an administrator/custom-access check (and using POST + a CSRF token for deletion)
before production use.
