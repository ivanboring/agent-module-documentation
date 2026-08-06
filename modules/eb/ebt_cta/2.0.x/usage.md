<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EBT Call to Action adds a ready-made block type combining text with a button, using the Extra Block Types family's shared presentation settings.

---

The call to action is the component a marketing site places most and configures worst. It is a heading, a sentence, a button and some styling, and because it is so simple every project builds it again — as a custom block type, as a paragraph, as a chunk of HTML in a body field, or as three separate blocks arranged by CSS. Having it as a block type means one definition, placeable in a region, droppable into a Layout Builder section and referenceable from a field, with the family's spacing, background and container settings attached. Version **2.0.0** requiring `ebt_core`, core requirement `^10.1 || ^11 || ^12`. Two things are worth attaching, and they are about the component rather than the module. **A button is a link or a button and the distinction matters**: something that navigates should be an `<a>` and something that performs an action should be a `<button>`, because a screen reader announces them differently and a keyboard treats them differently — a styled `<div>` with a click handler is neither, and is the commonest accessibility defect in a component library. And **a call to action is measured**, so the button usually needs to carry whatever the site's analytics use to attribute a conversion — which is a field on the component rather than something added later by a selector, since a CSS selector that identifies a button breaks the first time the design changes. The family's standing trade applies too: pre-built is quick to adopt and awkward to diverge from, and the component becomes a dependency of every page built with it.

---

- Add a call-to-action block to a page.
- Place a signup prompt in a region.
- Add a donate button with supporting text.
- Build a conversion block for a campaign.
- Add a CTA to a Layout Builder section.
- Place a contact prompt in a sidebar.
- Add an enquiry call to action.
- Build a consistent CTA component.
- Add a download prompt block.
- Place a subscribe call to action.
- Add a booking prompt to pages.
- Build a reusable conversion block.
- Add a CTA to a footer region.
- Place an apply-now button block.
- Add a registration prompt.
- Build a campaign conversion component.
- Add a CTA with background styling.
- Place a call to action per section.
