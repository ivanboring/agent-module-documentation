<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Block Usage Report adds an admin report at `/admin/reports/block-usage` listing which blocks are enabled and where they are placed, including blocks placed through Layout Builder.

---

On a mature site the answer to "where is this block actually used?" is genuinely hard to find. Blocks live in the block layout per theme, but they also live inside Layout Builder sections, inside other modules' placements, and in configuration that no single screen summarises. When you are about to delete a custom block, or auditing what a theme still depends on, the absence of that overview is a real gap.

This module fills it with a single read-only report. It walks the block placements — a `LayoutBlockFinder` handles the Layout Builder case specifically, which is the part the core block layout page misses — and presents them as a table of what is enabled and where. It is the kind of thing you reach for during a cleanup or a theme migration, not day to day.

Being a reporting tool, it is low-risk and self-contained: a controller, the finder service, a route, and no writes. Confirm the route's access requirement matches who should see structural information about the site before relying on it in a shared environment.

---

- See where a block is placed.
- Audit which blocks are enabled.
- Find blocks placed via Layout Builder.
- Check usage before deleting a block.
- Inventory blocks during a cleanup.
- Support a theme migration.
- Get a single block-placement overview.
- Find orphaned or unused blocks.
- Review structural dependencies on a block.
- List block placements as a table.
- Include Layout Builder placements.
- Plan a block library refactor.
- Confirm a block is safe to remove.
- Read block usage without touching config.
- Check the report's access requirement.
- Locate a block across themes.
- Document a site's block usage.
- Answer "where is this block used?".
- Prepare for a block content migration.
- Audit block layout before a redesign.