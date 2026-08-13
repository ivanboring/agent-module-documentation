<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drutopia Storyline (drutopia_storyline) — agent index

**Config-only Drutopia feature: 'storyline' Paragraph types for timeline/chronology content, with a submodule that adds a storyline field to pages.**

- **Version:** 2.0.x
- **Core:** ^10.2 || ^11 || ^12
- **Type:** Features config bundle — no PHP, routes, or services.
- **Paragraph types:** `storyline_header` (field_storyline_header), `storyline_item` (field_storyline_heading, field_text); plus `field.storage.node.field_storyline`.
- **Submodule:** `drutopia_page_storyline` — `config/actions` add `field_storyline` to the `page` type's form + full view display.
- **Depends on:** drutopia_core, drutopia_page, paragraphs, entity_reference_revisions, field_group, node.
- **Security:** no code endpoints; standard node/paragraph access applies. No anonymous or mutating custom routes.