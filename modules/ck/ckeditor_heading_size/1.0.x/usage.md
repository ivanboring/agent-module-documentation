<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor Heading Size adds a context menu letting an editor set a font size on a heading tag.

---

The request behind this is real and the usual implementation is the problem. An editor has a page where the `h2` is visually too large for a short section, or a landing page where a subheading should be prominent without becoming a document-level heading — so they want the size to differ from the level. That is a legitimate design need, and it is also the exact point at which most sites lose their heading semantics, because the ordinary way editors solve it is to pick the heading level that *looks* right rather than the one that *is* right. A page whose structure reads `h1, h4, h2, h4` because those were the sizes wanted is a page whose outline is meaningless: screen-reader heading navigation, table-of-contents generation and search all read the level rather than the size. Version **1.0.6** on `^9 || ^10 || ^11`, in the `Custom` package. **Whether this module helps or harms depends entirely on which of two things it does.** If it lets the editor keep the correct heading level and vary the *appearance* — a size class applied to a correctly-nested `h2` — then it removes the incentive to misuse levels, and is a genuine improvement. If it works by changing the tag, or by writing an inline `font-size`, then it has made the problem easier to create and put presentational styling into content, which the site's design will fight at the next redesign. **Check which before enabling it**, and prefer a text format's "Styles" dropdown offering named classes, which expresses the same intent without either failure mode.

---

- Make a heading visually smaller.
- Emphasise a subheading without changing level.
- Vary heading appearance on a landing page.
- Keep correct levels with different sizes.
- Style a section heading distinctly.
- Adjust a heading's prominence.
- Support a design's typographic scale.
- Give editors size control on headings.
- Avoid misusing heading levels for size.
- Style a hero subheading.
- Adjust heading size in a callout.
- Support a marketing page's typography.
- Vary heading weight visually.
- Keep document outline intact.
- Style a card's heading smaller.
- Adjust heading size per context.
- Support editorial typographic choices.
- Match a design's heading sizes.
