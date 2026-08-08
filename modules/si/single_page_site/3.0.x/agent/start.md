<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Single Page Site (single_page_site) — agent index

Renders every item of a chosen **menu** onto one page and rewrites the menu links to **anchors**.
Version **3.0.0**. Core `^11 || ^12`. Depends on core `menu_link_content`.
Configure at `/admin/config/system/single-page-site`. Page served at `/single-page-site`.

Permissions: `administer single page site`, `view single page site` — the assembled page is
restrictable independently of the underlying nodes.

**Theme-specific setup:** you must supply the CSS class/id of your theme's menu wrapper (e.g.
`#block-themename-main-menu`) or the link rewriting cannot find the menu.

Optional **Link Attributes** integration selects which menu items are included, by CSS class.

Submodule `single_page_site_next_page` adds a "scroll to next page" link per section.
Custom code can alter the assembled output via `EventSinglePageSiteAlterOutput`
(`SinglePageSiteEvents`).