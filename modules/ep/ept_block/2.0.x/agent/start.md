<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT Block (ept_block) — agent index

Paragraph type whose content is a **referenced Drupal block**, built on **`block_field`**, with the
EPT family's shared `ept_core` settings. Version **2.0.0**.
Core requirement `^10.1 || ^11 || ^12`.

**The gap it fills:** a page assembled from paragraphs needs things that already exist as blocks — a
shared CTA, a contact panel, a views listing, something a module provides. Rebuilding those as
paragraph types **duplicates them**; referencing keeps **one definition**. Three shapes of the same
need, differing in where the block lands: this (**page flow**), `ckeditor_insert_blocks` /
`ck5_block_embed` (**body text**), and block layout (**a region**).

**Raise the permission question — a block reference is broader than it appears:**
- **a block renders arbitrary markup and can attach JavaScript libraries**, so placing any block is
  closer to a **site-building** capability than an editing one;
- **which blocks the field offers is the real control** — an unrestricted list of every block on the
  site is a far larger grant than a curated set.

**Two further points:**
- **A views block embedded this way runs a view inside the page**, with its own access and filters —
  the result **varies by viewer**, and the page's cache metadata must account for it.
- **The block is rendered at display time**, so updating it updates every page referencing it — the
  point, and worth editors knowing.
