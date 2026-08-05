<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Toolbar Edit Page Button adds a button to the administration toolbar that opens the edit form for whatever the visitor is currently looking at.

---

Getting from a page to its edit form is one of the most repeated actions on any site and Drupal offers three routes, each of which fails somewhere. The **local task tabs** are the intended path and are absent from many front-end themes, squeezed into a content column on others, and buried among eight tabs on a site with moderation and translation. **Contextual links** require hovering the right element and finding a small pencil, which is unreliable on touch devices and invisible to anyone who does not know it is there. **The admin content listing** means leaving the page, searching for it, and coming back. A persistent button in a fixed location removes all of that, and because the toolbar is present on every page for anyone who can administer, it is the one place an editor can always look. Version **1.0.6** on core `^10 || ^11`, no dependencies. Two things determine whether it behaves well. **"The current page" is not always an entity** — a view, a search results page, a term listing, the front page or a custom route have no edit form, so the button must hide rather than link somewhere wrong; a button that is present and useless is worse than one that is absent. And **it must respect the entity's own access**, showing for content the current user may actually edit rather than for everything, since a visible edit control that leads to an access-denied page is a worse experience than no control at all.

---

- Jump from a page to its edit form.
- Avoid hunting for local task tabs.
- Edit a page from the toolbar.
- Replace contextual link hovering.
- Speed up editorial workflows.
- Edit a page on a touch device.
- Reduce navigation to the content listing.
- Provide a consistent edit control.
- Improve editing on a front-end theme.
- Reduce clicks per content edit.
- Support editors on mobile.
- Find the edit form reliably.
- Improve a moderation workflow.
- Edit a node from anywhere.
- Provide an always-visible edit shortcut.
- Improve first-time editor orientation.
- Reduce editorial friction.
- Support a fast review-and-fix loop.
