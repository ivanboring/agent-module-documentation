<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EBT Call to Action (ebt_cta) — agent index

Ready-made **Call to Action block type** — text plus a button — with the EBT family's shared
presentation settings. Requires `ebt_core`. Version **2.0.0**.
Core requirement `^10.1 || ^11 || ^12`.

**The component a marketing site places most and configures worst.** A heading, a sentence, a button
and some styling — so simple that every project rebuilds it: a custom block type, a paragraph, HTML
in a body field, or three blocks arranged by CSS. As a **block type** it is one definition, placeable
in a region, droppable into a **Layout Builder** section, and referenceable from a field.

**Two things worth attaching, about the component rather than the module:**
1. **A button is a link or a button, and the distinction matters.** Something that **navigates**
   should be an `<a>`; something that **performs an action** should be a `<button>` — screen readers
   announce them differently and keyboards treat them differently. **A styled `<div>` with a click
   handler is neither**, and is the commonest accessibility defect in a component library.
2. **A call to action is measured.** The button usually needs to carry whatever the site's analytics
   use to attribute a conversion — **as a field on the component**, not a CSS selector added later,
   because a selector identifying a button **breaks the first time the design changes**.

Family trade as always: quick to adopt, awkward to diverge from, and a dependency of every page
built with it.
