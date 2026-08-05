<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT Tiles (ept_tiles) — agent index

Ready-made **Tiles paragraph type** — a responsive grid, WYSIWYG in each tile — from the
**Extra Paragraph Types** family. Requires `ept_core` and `paragraphs`. Version **2.0.1**.
Core requirement `^10.1 || ^11 || ^12` (reaches into a major that does not exist yet).

**What EPT is for:** Paragraphs supplies the mechanism and, deliberately, **no components** — every
project rebuilds the same accordion, card grid and call-to-action. EPT is a library of pre-built
types, with `ept_core` providing shared settings (spacing, background, container width) so the
individual types stay small and mutually consistent.

**The trade to state plainly:**
- *Good case* — a site that wants a competent grid now and has no strong opinion about its markup.
- *Poor case* — a design system with definite ideas. The styling and field structure are the
  module's; a design the settings do not cover means overriding templates, and at that point a
  locally defined type is often cheaper.
- **It becomes a dependency of the content.** Removing it later leaves paragraph entities with no
  type.
