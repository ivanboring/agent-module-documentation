<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder Reusable Blocks (layout_builder_reusable_blocks) — agent index

Create and edit **reusable** `block_content` blocks from inside Layout Builder, without going to
the block library. Configure at `/admin/config/user-interface/layout-builder-reusable-blocks`.
Version **1.0.3**. Core `^10 || ^11`. Depends on `layout_builder`, `block_content`.

Permission: `administer layout builder reusable blocks` — **`restrict access: true`**; governs the
module's *settings*. Day-to-day editing still follows block content access.

Classes: `Plugin/Block/LayoutBuilderReusableContentBlock`,
`Form/LayoutBuilderReusableBlocksConfigForm`.

**Raise this whenever recommending it:** the separation it removes was doing work. Editing a
reusable block from one page changes it on **every** page using it — an editor who thinks they are
adjusting this page may change twenty. Pair with visual distinction between inline and reusable
blocks, and restrict who may edit shared ones.