<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Toolbar Edit Page Button (toolbar_edit_page_button) — agent index

Adds a button to the administration toolbar opening the **edit form for the current page**. No
dependencies. Version **1.0.6**. Core requirement `^10 || ^11`.

**Why the three existing routes each fail somewhere:**
- **local task tabs** — the intended path; absent from many front-end themes, squeezed into a
  content column on others, buried among eight tabs on a moderation-and-translation site;
- **contextual links** — require hovering the right element to find a small pencil; unreliable on
  touch, invisible to anyone who does not know it exists;
- **the admin content listing** — leave the page, search, come back.

The toolbar is present on every page for anyone who can administer, so it is **the one place an
editor can always look**.

**Two things determine whether it behaves well:**
1. **"The current page" is not always an entity.** A view, a search results page, a term listing,
   the front page or a custom route have no edit form — the button must **hide**, not link somewhere
   wrong. A present-and-useless button is worse than an absent one.
2. **It must respect the entity's own access**, appearing only for content the current user may
   edit. A visible edit control leading to access-denied is worse than no control.
