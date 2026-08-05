<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Display Link Plus (display_link_plus) — agent index

Extended **link field formatter** options — what text is shown, how the URL renders, what
attributes the anchor carries. No dependencies beyond core's link field. Version **1.1.1**.
Core requirement `^9 || ^10 || ^11`.

**What core leaves out:** show the *domain* rather than a hundred-character path; show the title
but **fall back to the URL** when none was entered (the common case); add `rel` or `target`; strip
the scheme. Each is otherwise a template override, repeated per site.

**Two things to attach to any link-display conversation:**
1. **`target="_blank"` is a deliberate choice, not a default.** It takes the back button away from
   the user, it is an accessibility concern when unannounced, and where used it needs
   **`rel="noopener"`** so the opened page cannot reach back through `window.opener`.
2. **The visible text is what a screen-reader user hears out of context** — assistive technology can
   list a page's links in isolation. A page of links reading "read more" or "https://…/node/4127"
   has a useless link list. A good formatter fixes that; a careless one creates it.

Related: `link_plain_text_formatter` (wave 70) for the no-anchor case.
