<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# External Links (external) — agent index

Opens links pointing off the site in a **new tab**, adding the associated attributes. Settings at
`/admin/config/content/external`; `administer external` is `restrict access: TRUE`.
Version **2.0.0-alpha5** — **alpha**. Core requirement `^10 || ^11`.

**This is one of the most requested and least examined behaviours on any site. Put the case against
to whoever asks for it:**
- **It takes the back button away.** The browser's most-used control does nothing in the new tab,
  and the visitor who expected to return must first notice the tab changed.
- **It is a change of context that must be announced** — a **WCAG** concern, not a preference. A
  screen-reader user not told a new window opened has simply lost the page, so an **icon alone is
  not enough**; the announcement must be in the **accessible name**.
- **It removes the choice from the person best placed to make it.** Anyone wanting a new tab can
  middle-click or ctrl-click. Nobody can undo the reverse.

The real case for it is narrow: a form part-completed, a video part-watched, a long document
part-read.

**If it is used, two things are not optional:** **`rel="noopener"`** so the opened page cannot reach
back through `window.opener`, and a **visible and announced** indication that the link opens
elsewhere.
