<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EBT Accordion ships a ready-made Accordion block type — collapsible sections for FAQs, policy documents and anything where a long page reads better folded up.

---

It is the accordion member of the Extra Block Types family, whose slideshow component was documented in wave 60: components as **block types** rather than paragraph types, so they can be placed in regions and in Layout Builder, with `ebt_core` supplying the settings they share. This one contributes the accordion — configuration defining the block type and its fields, templates for the render contexts, and the family's usual plugin and hook structure. Composer requires `ebt_core ^2.0` and `paragraphs ^1.0`, and `core_version_requirement` is `^10.1 || ^11 || ^12`, already covering Drupal 12. The accessibility point applies to every accordion and is worth stating rather than assuming: a collapsible section needs proper button semantics, `aria-expanded` state and keyboard operation, and content hidden inside a collapsed panel is not found by the browser's in-page search — which matters on a policy or FAQ page where visitors expect Ctrl+F to work. Compare `lb_tabs` (wave 63), which provides accordion and tab **layouts** for Layout Builder on jQuery UI; this is a block type with its own markup.

---

- Build an FAQ page with collapsible answers.
- Fold a long policy document into sections.
- Place an accordion in any region.
- Give editors a collapsible content block.
- Reduce page length on dense content.
- Show product specifications by section.
- Add an accordion to a landing page.
- Reuse an accordion block across pages.
- Share styling settings with other EBT components.
- Present terms and conditions in sections.
- Show course modules collapsed.
- Improve mobile readability.
- Theme the accordion with a template.
- Add an accordion without a developer.
- Present service information by topic.
- Group related questions.
- Export a configured accordion with site config.
- Prepare a component for Drupal 12.
