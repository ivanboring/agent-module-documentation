<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media Download All (media_download_all) — agent index

Field formatter + block offering a **'download all' archive** of a node's media/files. Version
**2.0.0-alpha6**.

**Security:** the archive is built from referenced files — **confirm it honours file access** (must
not bundle files the user couldn't access). Large sets are a server-resource operation.