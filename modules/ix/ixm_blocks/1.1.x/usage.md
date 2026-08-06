<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
IXM Blocks is the shell for a set of block types an agency reuses across builds — accordion, cards, carousel, CTA icons, hero, modal, ping pong, statistics, table and tabs.

---

Agencies converge on the same block types across client sites, and the alternative to packaging them is rebuilding a hero and a card grid on every project with slightly different field names. This module is the shell — `block_content` is its only dependency — with each component in its own submodule, so a build enables the ones it needs.

The submodule list is a fair description of what a marketing site actually needs: `ixm_blocks_accordion`, `_cards`, `_carousel`, `_cta_icons`, `_hero`, `_modal`, `_ping_pong`, `_statistics`, `_table`, `_tabs`, plus `_boilerplate` as the pattern for adding another.

Reading it as an outside project is useful in two ways. The `_boilerplate` submodule is a worked example of how to package a block type properly — fields, form display, view display, template — which is the thing most teams get slightly wrong. And the set itself is a reasonable checklist when scoping a component library: if a project needs something outside these ten, that is worth noticing early.

Because the components are `block_content` bundles they are revisioned, translatable, and reusable through the block library, and they work with Layout Builder or plain block layout without the module caring which.

---

- Reuse a standard block set across builds.
- Add a hero component to a project.
- Add a card grid without rebuilding it.
- Place an accordion or tabs block.
- Show statistics as a component.
- Add a ping-pong alternating layout.
- Enable only the components a build needs.
- Use the boilerplate submodule as a pattern.
- Package a new block type correctly.
- Scope a component library for a project.
- Revision block content.
- Translate a component.
- Reuse a component through the block library.
- Work with Layout Builder or block layout.
- Audit which components a site enables.
