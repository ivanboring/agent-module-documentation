<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Hero adds a ready-made Hero paragraph — a title, a description and buttons — from the Extra Paragraph Types family.

---

The hero is the first component every page builder needs and the one every project rebuilds: a heading, a supporting sentence, one or two calls to action, usually over an image. Building it means a paragraph type, four fields, a template and a set of style options, before anything specific to the site has been done. EPT supplies it pre-built over the shared `ept_core` settings — spacing, background, container width — and here also over **`ept_basic_button`**, so the buttons are a shared component rather than a link field styled by hope, which is the detail that keeps buttons consistent between the hero and everything else. Version **2.0.1**, core requirement `^10.1 || ^11 || ^12`. Two things to weigh, the same trade as the rest of the family. **Pre-built is quick to adopt and awkward to diverge from** — the markup and field structure are the module's, so a design the settings do not cover means overriding templates, and at that point a locally defined type is often cheaper. And **it becomes a dependency of the content**: pages are built from it, so removing the module later leaves paragraph entities with no type. Beyond that, a hero is worth one specific check that nothing in the module can do for you — **the heading level**. A hero's title is usually the page's `h1`, and a hero placed mid-page is not, so a component that hard-codes its heading level produces either two `h1`s or a document outline that skips.

---

- Add a hero banner to a landing page.
- Build a page header with buttons.
- Add a title and call to action.
- Create a campaign page's opening.
- Add a hero to a product page.
- Give editors a ready-made banner.
- Build a homepage opening section.
- Add a supporting sentence under a heading.
- Place two calls to action together.
- Build a service page's header.
- Add a hero over a background image.
- Create an event page's opening.
- Build a consistent page header.
- Add a hero to a microsite.
- Use shared button styling.
- Build a landing page quickly.
- Add a hero with configurable spacing.
- Create a section opener.
