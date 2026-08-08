<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# File Downloader (file_downloader) — agent index

Configurable **download options for file fields** (plugin system, multiple links per file). Version
**3.0.3**.

**Access done right (positive, verified):** the download route delegates to the option config, which
requires a per-option permission (`use {id} download option link`), checks extension, then the
plugin's `access()` checks **`$file->access('view', $account)`** — a file the user can't view isn't
downloadable by id-guessing. Private files are protected; the IDOR-shaped route is safe. Set the
per-option permissions to who should download.