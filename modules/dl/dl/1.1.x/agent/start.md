<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DL (Document Library) — agent index

A **comprehensive document-management/library system** (upload/categorize/browse documents). Depends on core
`node`, `file`, `user`, `views`, `taxonomy`. Provides permissions. Version **1.1.0**. Core `^10||^11`.

Content/DMS — documents are files: for restricted docs use the **private file scheme** (public files are
web-served regardless of listing access), keep upload perms to trusted roles. No special access role beyond core
node/file access + its permissions.
