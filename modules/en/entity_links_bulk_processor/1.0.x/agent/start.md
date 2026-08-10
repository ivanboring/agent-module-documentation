<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Links Bulk Processor — agent index

**Bulk-converts internal entity links** in content (alias URLs → canonical entity links; `entity_links_autosave`
submodule). Depends on core `filter`, `path_alias`. Provides permissions. Version **1.0.0-alpha9**. Core
`^10||^11`.

Admin/content-maintenance — rewrites content links in bulk (privileged; back up, trusted operator); gated by its
permission. No access role beyond that.
