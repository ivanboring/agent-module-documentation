<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Default Content Deploy (default_content_deploy) — agent index

Export/import **content** between environments continuously (references preserved via UUID).
Version **2.1.4**. Core `^10.3 || ^11`. Depends on core `hal`. Submodule
`search_api_default_content_deploy`.

**Security:** `default content deploy import` **writes/overwrites entities** on the target — an
import is programmatic content creation. On production that belongs to a trusted deployment process,
not a broadly granted permission. Perms: `default content deploy import` / `export`. Review what a
deployment includes before running against production.