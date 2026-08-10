<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# File View Access — agent index

Adds a **`file view access` permission** for files. Depends on core `file`. Provides permissions. Version
**2.1.0**. Core `^8||^9||^10||^11`.

**SECURITY WARNING (danger 2, verified):** does **not** actually restrict file viewing. The handler only
`allowedIfHasPermission()` on **public**-scheme files (never forbids), but public files are served **by URL**
bypassing the handler, and it implements **no `hook_file_download`** for private files. So the permission gives
**false confidence** — public files stay world-readable, private files aren't gated. Use the **private scheme**
+ `hook_file_download` for real restriction. See `security.md`.
