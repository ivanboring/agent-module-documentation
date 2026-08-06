<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT Columns / Container (ept_columns) — agent index

Paragraph types that **hold other paragraphs** — a **columns** layout and a plain **container** —
with the family's shared presentation settings. Requires `ept_core`, `paragraphs`.
Version **2.0.0**. Core requirement `^10.1 || ^11 || ^12`.

**These are the structural pieces without which the rest cannot be arranged.** A flat list of
paragraphs can only **stack**; side-by-side placement, or wrapping several components in a band,
needs a paragraph that **contains** paragraphs. **The container is the more useful of the two** — it
is what makes a group of components a **section**: background, constrained width, spacing as a unit,
moved as a unit. That is how designers describe pages and how editors want to work.

**Three things follow from nesting:**
1. **Depth is where paragraph interfaces become unusable.** Two levels is manageable; three is hard
   to navigate; four means scrolling a nested form trying to work out **which "Add paragraph" button
   belongs to which container**. **Limit the allowed depth early.**
2. **Column behaviour on narrow screens is a content-order decision, not styling.** *Which column
   comes first when they stack* is what an editor cares about — a component that guesses is wrong
   half the time.
3. **Nesting multiplies revisions.** Paragraphs are revisioned with their host, so a deeply nested
   page creates **many paragraph revisions per save** — a real contributor to database growth on a
   page-built site.
