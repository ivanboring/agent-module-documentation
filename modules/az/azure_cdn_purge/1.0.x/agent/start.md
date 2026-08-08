<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Azure CDN Purger — agent index

**Purge** module purger that **invalidates cached content on Azure CDN** (fresh content after edits).
Depends on `purge`. Config at `azure_cdn_purge.admin_config_form`; provides permissions. Version
**1.0.4**. Core `^10||^11`.

**Security:** store Azure CDN-purge API credentials as secrets, least-privilege. Uses TLS (checked — no
disabled verification).
