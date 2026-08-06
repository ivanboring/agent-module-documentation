<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor Insert Blocks lets an editor place a Drupal block into body content from the editor toolbar.

---

The requirement recurs on any site where components live in the block system: an editor writing an article wants a call-to-action, a related-content listing, a newsletter signup or a promotional panel partway down, and those things already exist as blocks. The structured answers are a paragraph type or Layout Builder, both of which are better designed and both of which are a larger change to how the site is built. Inserting a block from the editor is the pragmatic middle, and it keeps the block a **reference** rather than a copy, so updating the block updates every article embedding it. Version **1.0.3** on core `^10 || ^11`. **The permission gating this deserves more weight than a WYSIWYG button usually gets**, and it is worth understanding rather than granting. A block renders arbitrary markup and can attach JavaScript libraries, so the ability to place any block into body text is closer to a site-building capability than an editing one. A **views block** runs a view inside the article with the view's own access and filters — correct, and it means the embedded result varies by viewer, so the host content's cache metadata must account for it or one visitor's results are cached for everyone. And **which blocks the button offers is the real control**: an unrestricted list of every block on the site is a much larger grant than a curated set, so check that first. Grant it to the people who would otherwise be placing blocks in block layout. Compare `ck5_block_embed` in wave 77, which does the same job with an explicit permission.

---

- Insert a call-to-action into an article.
- Embed a related-content block mid-page.
- Add a newsletter signup to body text.
- Place a promotional panel in content.
- Reference a block rather than copying it.
- Embed a views listing in an article.
- Keep an embedded block up to date.
- Add a contact block to a page.
- Insert a downloads block into a guide.
- Add a testimonial block inline.
- Embed a map block in content.
- Place a form block in an article.
- Reuse a block across many articles.
- Add a sidebar-style block inline.
- Insert a video block into text.
- Embed a filtered product list.
- Add a banner block mid-article.
- Place a shared notice in content.
