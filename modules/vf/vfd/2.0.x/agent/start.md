<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views File Downloader (vfd) — agent index

Zip-download of a View's file/media attachments. Version **2.0.1**.

- **Routes**: `/download-view/{path}` (`DownloadViewController::download`, perm `access vfd`); settings at
  `/admin/structure/views/settings/vfd` (perm `administer site configuration`).
- **Mechanism**: `{path}` must equal a View machine name stored in `vfd.settings` (no free path). Runs
  `views_get_view_result($path)`, copies each row's file into temp `/Downloads`, zips, streams via
  `readfile()` + `exit()`.
- **Access caveat**: no per-file/per-node access check — anyone with `access vfd` gets every file in
  the mapped View. Scope the permission and only map safe Views. See [security.md](security.md).
