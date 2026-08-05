<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple GSE Search (simple_gse_search) — agent index

Google **Programmable Search Engine** (Custom Search) integration. Core-only dependencies.
Core requirement `^8.8 || ^9 || ^10 || ^11`.

| Route | Path | Permission |
|---|---|---|
| `simple_gse_search.admin_settings` | `/admin/config/search/simple_gse_search` | `administer gse search` |
| `simple_gse_search.search_page` | **`/search`** | `access gse search page` |

Key facts:
- **It claims `/search`** — core Search's path. On a site with core Search enabled the two
  collide; disable one or move the other.
- **Three constraints to state before recommending it:**
  1. *Results are limited to what Google has indexed.* New content lags, unpublished content never
     appears, and **anything behind a login is invisible** — so this cannot serve an intranet or a
     members' area.
  2. *Cost and branding.* The free tier shows Google branding and has query limits; the paid tier
     bills per thousand queries.
  3. *Privacy.* Search terms are sent to Google — worth noting where queries could be sensitive.
- Where it genuinely fits: a small public site that cannot justify Search API plus a backend, and
  whose content Google already crawls.
