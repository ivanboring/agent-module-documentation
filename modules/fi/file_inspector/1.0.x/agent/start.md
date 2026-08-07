<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# File Inspector (file_inspector) — agent index

Scans the filesystem for files not in `file_managed`; inspect, delete, or import into the media
library. Report at `/admin/reports/file-inspector`, config at `/admin/config/media/file-inspector`.
Version **1.0.0**. Core **`^11`**. Depends on `views`.

**Permissions are separated exactly right** — `view file inspector` (see the report),
`import unmanaged files` (bring into the media library), `administer file inspector`
(**restrict**, configures the scan, excluded folders, MIME types, stream wrappers). Three different
levels of trust that would have been easy to collapse into one.

**Two things to weigh before granting `view file inspector`:** the report is a **directory listing
of the site's filesystem, including private files** — knowing a file exists at a path is most of
the way to reading it, and for `public://` all of the way. And **deletion here is irreversible in a
way content deletion is not**: no revision, no unpublish, and no reference explaining what the file
was for. Treat bulk delete as a backup-first operation.