<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Analyze Broken Links — agent index

**Checks content for broken internal and external links** (crawls content links, reports 404s/timeouts).
Depends on `analyze`. Provides permissions. Version **1.0.2**. Core `^10.3||^11`.

Admin/content-QA — run route requires `administer analyze settings`; makes outbound requests to content links
(admin-gated crawl, trusted operators). No access role beyond permission.
