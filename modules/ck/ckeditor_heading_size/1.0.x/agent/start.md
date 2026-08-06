<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor Heading Size (ckeditor_heading_size) — agent index

Context menu for setting a **font size on a heading tag** in CKEditor. Package `Custom`.
Version **1.0.6**. Core requirement `^9 || ^10 || ^11`.

**The underlying need is real:** an editor wants a heading's **size** to differ from its **level** —
an `h2` too large for a short section, a landing-page subheading that should be prominent without
becoming a document-level heading.

**It is also the exact point where most sites lose their heading semantics**, because the ordinary
way editors solve it is to pick the level that **looks** right rather than the one that **is** right.
A page reading `h1, h4, h2, h4` has a meaningless outline — screen-reader heading navigation,
table-of-contents generation and search all read the **level**, not the size.

**Whether this module helps or harms depends entirely on which of two things it does — check
before enabling it:**
- **keeps the correct level and varies appearance** (a size class on a correctly-nested `h2`) — then
  it **removes the incentive to misuse levels**, and is a genuine improvement;
- **changes the tag, or writes an inline `font-size`** — then it has made the problem easier to
  create **and** put presentational styling into content, which the next redesign will fight.

**Prefer a text format's "Styles" dropdown offering named classes** — the same intent without either
failure mode. Pairs with `ckeditor5_show_blocks` (wave 80), which makes the structure visible.
