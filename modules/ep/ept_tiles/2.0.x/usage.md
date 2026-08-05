<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Tiles adds a ready-made Tiles paragraph type — a grid of tiles with a WYSIWYG editor in each — as part of the Extra Paragraph Types family.

---

Paragraphs gives you the mechanism for component-assembled pages and, deliberately, no components: every project defines its own accordion, its own card grid, its own call-to-action, and every project rebuilds the same handful. EPT is a library of those pre-built types with a shared `ept_core` providing the common settings — spacing, background, container width — so the individual types stay small and stay consistent with each other. Tiles is the grid one: a set of tiles, each with rich text, arranged in a responsive layout. Version **2.0.1**, requiring `ept_core` and `paragraphs`, with a core requirement of `^10.1 || ^11 || ^12` that reaches into a core major that does not exist yet. What to weigh: a pre-built paragraph type is quick to adopt and awkward to diverge from — the styling and field structure are the module's, so a design that differs in a way the settings do not cover means overriding templates, and at that point a locally defined type may be cheaper. It also becomes a dependency of the site's content, since removing it later leaves paragraph entities with no type. The good case is a site that wants a competent grid now and does not have a strong opinion about its markup; the poor case is a design system with definite ideas.

---

- Add a tile grid to a page.
- Build a services overview.
- Show three feature boxes.
- Add a grid of links with text.
- Give editors a ready-made component.
- Build a landing page quickly.
- Show product categories as tiles.
- Add a rich-text grid section.
- Avoid building a card component.
- Provide consistent spacing settings.
- Build a team overview.
- Show a set of benefits.
- Add a responsive tile layout.
- Prototype a page structure.
- Use a shared component library.
- Add a WYSIWYG grid section.
- Build a homepage feature row.
- Show a resources grid.
