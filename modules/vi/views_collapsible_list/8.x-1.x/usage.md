<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views collapsible lists adds a Views style plugin that renders rows as expandable and collapsible items — an accordion built from a view rather than from hand-written markup.

---

The FAQ page is the archetype: thirty questions, each with an answer that should be hidden until asked for. Building it from content means each entry is a node or a paragraph, and the presentation should follow from the view rather than from a template override per site. A style plugin is the right layer for that — it governs how the whole result set is wrapped, which is exactly what an accordion is — and it composes with everything else Views already offers: filtering, sorting, paging, contextual filters and access. Version **8.x-1.6** on core `^9 || ^10 || ^11`, depending on core `views`. The point that separates a good accordion from a bad one is **the disclosure mechanism**, and it is worth checking which this uses. HTML's native `<details>`/`<summary>` gives keyboard operation, screen-reader announcement and browser find-in-page for free, and modern browsers can even animate it; a JavaScript implementation must supply `aria-expanded`, a focusable trigger and correct state announcement itself, and frequently supplies only the first. Two related points: content hidden by JavaScript is still in the DOM, so it is rendered, it costs query time and it *is* findable by browser search — while content hidden inside a closed `<details>` is findable too but only in browsers that implement it. And decide whether the first item opens by default, because an accordion that starts fully closed can look like an empty page.

---

- Build an FAQ page from a view.
- Show questions with hidden answers.
- Collapse long listing entries.
- Reduce page length on a support page.
- Build an accordion from content.
- Expand a row on click.
- Show a summary with hidden detail.
- Present a policy document by section.
- Build a knowledge base index.
- Group release notes by version.
- Collapse a long list of resources.
- Show staff biographies on demand.
- Present a programme schedule.
- Build a documentation index.
- Show terms and conditions by clause.
- Reduce scrolling on mobile.
- Present a product's specifications.
- Build a filterable FAQ.
