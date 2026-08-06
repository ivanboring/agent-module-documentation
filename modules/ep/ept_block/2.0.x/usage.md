<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Block adds a paragraph type whose content is a referenced Drupal block, so a block can be placed in a page's flow like any other component.

---

Component-built pages produce a specific gap: the page is assembled from paragraphs, and some of the things that belong in it already exist as blocks — a shared call to action, a contact panel, a views listing, something a module provides. Rebuilding those as paragraph types duplicates them and means two things to maintain; referencing them keeps one definition and lets the editor position it. That is the same reasoning behind `block_field`, which is the field type this paragraph is built on, and the same requirement `ckeditor_insert_blocks` answers for body text — three shapes of the same need, differing in where the block ends up. Version **2.0.0** with the EPT family's shared `ept_core` settings, core requirement `^10.1 || ^11 || ^12`. **The permission question is the one to raise, because a block reference is a broader capability than it appears.** A block renders arbitrary markup and can attach JavaScript libraries, so an editor who can place any block into a page has something closer to a site-building capability than an editing one — and **which blocks the field offers is the real control**, since an unrestricted list of every block on the site is a much larger grant than a curated set. Two further points: **a views block embedded this way runs a view inside the page** with its own access and filters, so the result varies by viewer and the page's cache metadata must account for it; and a block placed in content is **rendered at display time**, so updating the block updates every page referencing it, which is the point and is worth editors knowing.

---

- Place a shared call to action in a page.
- Embed a views listing as a component.
- Add a contact panel to a built page.
- Reference an existing block in content.
- Avoid duplicating a block as a paragraph.
- Position a module-provided block.
- Add a promotional block mid-page.
- Embed a filtered product list.
- Place a newsletter signup block.
- Reuse a block across landing pages.
- Add a map block to a page's flow.
- Keep one definition for a component.
- Embed a menu block in content.
- Place a testimonial block.
- Add a downloads block to a guide.
- Reference a search form block.
- Embed a social feed block.
- Position a shared notice in a page.
