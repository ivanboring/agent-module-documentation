<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Layout Builder Reusable Blocks lets an editor create and edit a reusable content block without leaving Layout Builder and going to the block library.

---

Layout Builder offers two kinds of block: inline blocks, which belong to one layout and cannot be reused, and reusable content blocks from the library, which can be placed anywhere but must be created and edited at `/admin/content/block`. That split forces a context switch at exactly the wrong moment — an editor building a page realises the callout should be shared, and has to leave the page, create it elsewhere, come back and place it. Editing is worse: seeing a reusable block on the page and having to go find it in the library to change a word.

This module closes that gap, providing `Plugin/Block/LayoutBuilderReusableContentBlock` and a settings form to control the behaviour. The result is that "make this reusable" and "edit this shared block" become in-place operations.

The thing to be deliberate about is the consequence of that convenience, because it is the same one the block library's separation was protecting against: editing a reusable block from one page changes it on every page that uses it. An editor who thinks they are adjusting this page can change twenty. Whether that is a problem depends on the site, but it is worth pairing this with a clear visual distinction between inline and reusable blocks, and with restricting who may edit shared blocks.

The permission `administer layout builder reusable blocks` is `restrict access: true` and governs the module's settings, not the day-to-day editing, which follows block content access as usual.

---

- Create a reusable block from inside Layout Builder.
- Edit a shared block without leaving the page.
- Promote an inline block to the block library.
- Avoid a context switch to `/admin/content/block`.
- Let editors build and share components in one flow.
- Reuse a callout across several landing pages.
- Update shared content once and see it everywhere.
- Reduce duplicated block content across pages.
- Keep editors inside the Layout Builder UI.
- Configure the module's behaviour per site.
- Restrict who may configure the integration.
- Pair with clear styling that marks shared blocks.
- Train editors on the reach of a shared block edit.
- Audit which reusable blocks are placed where.
- Speed up building pages from shared components.