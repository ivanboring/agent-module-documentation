<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Paragraphs Toggle Publish (layout_paragraphs_toggle_publish) — agent index

Adds a **publish/unpublish control** to each component in the Layout Paragraphs builder.
Requires `paragraphs` and **`layout_paragraphs ^2`**. Version **1.0.2**.
Core requirement `^8.8 || ^9 || ^10 || ^11`.

**The missing verb.** Layout Paragraphs' controls cover add, edit, move, delete — but not
*hide this for now*, which editors reach for constantly (a seasonal promotion, a section awaiting
sign-off). Without it the options are delete-and-rebuild or keep an unused copy elsewhere; both
lose work and context. Paragraphs entities already carry a published flag — this exposes it.

**Access handling is correct and worth noting as a pattern.** The route
`/layout-paragraphs-toggle-publish/{layout_paragraphs_layout}/toggle-publish/{component_uuid}`
uses **`_layout_paragraphs_builder_access: 'TRUE'`** — the parent module's own access requirement —
rather than a flat permission. The toggle is therefore available to exactly the people who may
already edit that layout, and it inherits any future change to the parent's rules.

**Two operational points:**
- an unpublished paragraph is **hidden, not absent** — it still occupies a delta, still exports,
  and still reaches anything reading the field directly;
- confirm the site's **view modes and API consumers actually respect** the paragraph's published
  flag. Not all of them do.
