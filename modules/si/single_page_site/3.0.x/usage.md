<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Single Page Site renders the content behind every item in a chosen menu onto one page, and rewrites that menu's links to point at anchors on the page instead of navigating away.

---

The one-pager is a whole genre of site — a product launch, a conference, a small organisation — and building one in Drupal normally means either a single enormous node or a paragraph stack that duplicates content already living in nodes. This module takes the third route: keep the nodes, keep the menu, and let the menu define the page order.

Configuration is at Configuration > System > Single Page Site. You pick the menu, and then tell the module the CSS class or id of the menu wrapper in your theme so the link rewriting can find it — that part is theme-specific, and the README is explicit that a value like `#block-themename-main-menu` depends on your theme's block id. The page itself is served at `/single-page-site`.

Two permissions ship: `administer single page site` and `view single page site`, so the assembled page can be restricted independently of the underlying content. Note the module renders nodes into the page, so a viewer sees whatever the render pipeline gives them for those nodes.

An optional submodule, `single_page_site_next_page`, appends a "scroll to next page" link to the bottom of each section. It is a separate enable, and it works by altering the output through an event subscriber — the module exposes `EventSinglePageSiteAlterOutput` for that, so custom code can hook the same point.

---

- Build a one-page website from a menu.
- Render several nodes onto a single page.
- Rewrite menu links to page anchors.
- Keep content in nodes rather than one huge page.
- Order sections by menu weight.
- Serve the assembled page at /single-page-site.
- Restrict who may view the single page.
- Restrict who may configure it.
- Point the module at your theme's menu wrapper id.
- Add a scroll-to-next-section link.
- Alter the assembled output from custom code.
- Include or exclude menu items by CSS class.
- Use Link Attributes for selective inclusion.
- Build a conference or launch site.
- Reuse existing nodes without duplication.
- Test the menu class against your theme.