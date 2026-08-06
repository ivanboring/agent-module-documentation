<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# IXM Blocks (ixm_blocks) — agent index

Shell for an agency's reusable **block type** set. Version **1.1.3**. Core `^10 || ^11`.
Depends only on `block_content`.

Submodules: `ixm_blocks_accordion`, `_boilerplate`, `_cards`, `_carousel`, `_cta_icons`, `_hero`,
`_modal`, `_ping_pong`, `_statistics`, `_table`, `_tabs`.

Two reasons it is useful to read from outside the agency: **`_boilerplate` is a worked example** of
packaging a block type properly (fields, form display, view display, template) — the thing most
teams get slightly wrong; and the ten-component set is a **reasonable checklist** when scoping a
component library.

Components are `block_content` bundles — revisioned, translatable, reusable via the block library,
and agnostic between Layout Builder and plain block layout.