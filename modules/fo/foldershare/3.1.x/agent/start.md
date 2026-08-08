<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# FolderShare (foldershare) — agent index

Hierarchical **file/folder manager with per-item sharing** (private-cloud-drive). Version
**3.1.0-beta2**.

**Access model is the security surface — dedicated permissions:** `view foldershare`,
`author foldershare` (create/upload), **`share foldershare`** (share with users),
**`share public foldershare`** (make world-readable — a *separate* permission), `administer
foldershare`. Routes: `/foldershare` (own), `/shared`, `/public`, `/all` (admin).

**Get right:** which roles hold `share public foldershare` (that's what exposes files beyond site
users); confirm file storage is `private://` so shared files are served through FolderShare's access
checks, not directly fetchable.