<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor5 block embed adds a toolbar button for inserting content blocks, view blocks and the active theme's region blocks into body text.

---

Editors want to put a thing inside an article: a related-content view partway down, a call-to-action block between sections, a newsletter signup at the end. The structured answers are a paragraph type or Layout Builder, which are better designed and are a larger change to how the site is built; the unstructured answer is a token or a raw embed pasted into the body. A CKEditor button is the pragmatic middle, and it keeps the reference as a reference — the block is rendered at display time, so updating it updates every article that embeds it. Version **1.0.3** on core `^10 || ^11`, depending on core `ckeditor5`, gated by a `use ck5 block embed button` permission. **That permission deserves more weight than its title suggests**, and it is the thing to understand before granting it. Embedding a **view block** means running a view inside the article, with the view's own access and filters — which is correct, and means the embedded result varies by viewer, so the article's cache metadata must account for it. Embedding a **region block** places whatever is in that region, which is site chrome under someone else's control. And blocks can render arbitrary markup and attach libraries, so the ability to place any block into body text is closer to a site-building permission than an editing one. Grant it to the people who would otherwise be placing blocks in block layout, and check which blocks the button actually offers — an unrestricted list is a larger grant than a curated one.

---

- Insert a related-content view into an article.
- Add a call-to-action block mid-page.
- Embed a newsletter signup at the end.
- Place a block inside body text.
- Reference a block rather than copying it.
- Embed a views listing in a page.
- Add a promotional block to selected articles.
- Insert a contact block into a page.
- Embed a region's contents.
- Keep an embedded block up to date.
- Add a testimonial block to an article.
- Embed a filtered product list.
- Insert a video block into text.
- Add a downloads block to a guide.
- Embed a map block.
- Place a form block in an article.
- Reuse a block across articles.
- Add a sidebar-style block inline.
