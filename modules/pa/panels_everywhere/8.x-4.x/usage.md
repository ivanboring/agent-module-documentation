<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Panels Everywhere replaces the theme's page template with a Panels layout, so the whole page — not just the content area — is arranged through the Panels interface.

---

Drupal's page structure is a theme concern: `page.html.twig` defines regions, blocks are placed into them, and changing that arrangement means editing a template. Panels normally works inside that, controlling the content region while the theme still owns the shell. Panels Everywhere inverts it — the page itself becomes a Panels variant, so headers, footers, sidebars and content are all panes arranged in the same interface, and a different page arrangement is a different variant rather than a different template. For teams whose page structures vary a great deal, or who want site builders rather than front-end developers making those decisions, that is a coherent architecture. Version **8.x-4.0-beta4** — a **beta** — on core `^9.2 || ^10 || ^11`, requiring `panels`, `page_manager`, `ctools_block` and core `layout_discovery`. Two things need saying plainly. **This is the Drupal 7 architecture, and core has moved elsewhere**: Layout Builder is core's answer to the same question, is maintained by core, and is where the ecosystem's attention is — while `panels` and `page_manager` remain in long-running beta. So this belongs to sites that already have it rather than to new builds, and a new project choosing it is choosing a path with a smaller and shrinking community. And **taking the page shell away from the theme has consequences worth checking**: anything that assumes the theme's regions — a contrib module placing a block, a theme's own preprocess, the toolbar, messages — needs verifying rather than assuming, because those assumptions are what the inversion breaks.

---

- Arrange a whole page with Panels.
- Move page structure out of the theme.
- Let site builders arrange headers and footers.
- Vary page structure per section.
- Maintain a Drupal 7-era Panels site.
- Build page variants without templates.
- Arrange a landing page's full layout.
- Support a Panels-based architecture.
- Vary the shell by content type.
- Give a section its own page structure.
- Manage regions through a UI.
- Support an existing Panels Everywhere site.
- Build a page with conditional regions.
- Arrange sidebars per variant.
- Replace a theme's page template.
- Support a page-manager workflow.
- Vary the footer by context.
- Maintain a legacy Panels layout.
