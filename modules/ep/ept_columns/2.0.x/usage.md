<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Columns / Container adds paragraph types that hold other paragraphs — a columns layout and a plain container — with the family's shared presentation settings.

---

These are the structural pieces of a paragraph-based page builder and the ones without which the others cannot be arranged. A page assembled from a flat list of paragraphs can only stack them; putting two components side by side, or wrapping several in a band with a background, needs a paragraph that contains paragraphs. The container is the more useful of the two in practice, because it is what makes a group of components a section — something that can be given a background, constrained to a width, spaced as a unit, and moved as a unit — which is how designers describe pages and how editors want to work with them. Version **2.0.0** requiring `ept_core` and `paragraphs`, core requirement `^10.1 || ^11 || ^12`. Three things follow from nesting. **Depth is where paragraph interfaces become unusable**: two levels is manageable, three is hard to navigate in the form, and four means an editor is scrolling through a nested structure trying to work out which "Add paragraph" button belongs to which container — so limiting the allowed depth is a design decision worth making early. **Column behaviour on narrow screens is a content-order decision**, not a styling one: which column comes first when they stack is what an editor cares about, and a columns component that guesses will be wrong half the time. And **nesting multiplies revisions** — paragraphs are revisioned with their host, so a deeply nested page creates a large number of paragraph revisions per save, which is a real contributor to database growth on a page-built site.

---

- Place two components side by side.
- Wrap components in a background band.
- Build a three-column section.
- Group paragraphs into a section.
- Constrain a group to a narrow width.
- Add spacing around a group of components.
- Build a page's structural sections.
- Move several components together.
- Create a two-column text layout.
- Build a feature row with columns.
- Wrap a group in a coloured container.
- Structure a landing page's bands.
- Build a sidebar-and-content layout.
- Group related components visually.
- Add a full-width container section.
- Build a nested page structure.
- Arrange cards in columns.
- Create a contained content section.
