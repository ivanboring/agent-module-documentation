<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Go Back History supplies a block that renders a "go back" link driven by the browser's history, placeable through the normal block layout.

---

Getting the user back where they came from is harder than it looks. A breadcrumb shows structural position, not the path actually taken; a hard-coded link to a listing page is wrong when the visitor arrived from search or from a related item. The browser's own history is the only thing that knows, and this module exposes it as a Drupal block so it can be placed per region, per theme, and restricted with the usual visibility conditions.

That makes it a decent fit for detail pages reached from many directions — a product from a category, a search result or a promotion; a document from several index pages; a step in a flow where the previous step varies. It also helps on mobile, where the browser's back affordance is less visible than on desktop.

Two things to be clear about with any history-based control. It depends on there being history to go back to: a visitor arriving directly on a deep link from an email or a search engine has none, so decide what the block should do in that case before placing it prominently. And because the destination is the browser's, not the site's, it is not a navigation structure — keep breadcrumbs or a real parent link for the structural relationship, and use this for the "take me back" gesture.

---

- Add a back link to detail pages.
- Return a visitor to the listing they came from.
- Give mobile users a visible back affordance.
- Place a back link in a specific region.
- Show the back link only on selected content types.
- Help visitors who arrive at a product from several routes.
- Return to a search result page after viewing an item.
- Add a back step to a multi-page flow.
- Complement breadcrumbs on deeply nested content.
- Restrict the block to one theme.
- Configure the link's label per placement.
- Handle direct arrivals with no history deliberately.
- Reduce reliance on the browser chrome for navigation.
- Replace a hand-written JavaScript back link.
- Add a back link to a search result page.
- Restrict the block to authenticated users.
