<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder Kit (layout_builder_kit) — agent index

Ready-made components (blocks, layouts, settings) for core's **Layout Builder**. Depends on
`layout_builder` and **`hook_event_dispatcher`** (`core_event_dispatcher`). Settings at
`/admin/config/content/layout_builder_kit/settings`; `access layout builder kit components` is
`restrict access: true`. Version **3.0.0-beta2** — beta. Core requirement `^10 || ^11`.

**Why it exists:** Layout Builder ships deliberately bare — sections, blocks and a way to arrange
them, with almost nothing to arrange. Every project rebuilds the same primitives (background,
spacer, width container, field block with options) before building anything specific.

**Notice the `hook_event_dispatcher` dependency.** That is a substantial module re-expressing
Drupal's hooks as Symfony events — adopting this brings an **architectural dependency**, not just
components.

**The same trade as the EPT paragraph family (waves 71–73):**
- pre-built components are quick to adopt and **awkward to diverge from** — the markup and settings
  are the module's, so a design the options do not cover means template overrides, at which point
  local components are often cheaper;
- **components become a dependency of the content** — pages are built from them, so removing the
  module later leaves sections referencing blocks that no longer exist.
