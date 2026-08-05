<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Display Link Plus extends the link field's formatter options — controlling what text is shown, how the URL is rendered and what attributes the anchor carries.

---

Core's link formatters are thin: show the link, show it as a plain URL, or show the title. That leaves a set of ordinary requirements unmet. Show the domain rather than the full URL, because a listing of external references reads better as "bbc.co.uk" than as a hundred-character path. Show the title but fall back to the URL when no title was entered, which is the common case where editors sometimes fill the field and sometimes do not. Add `rel="noopener"` or a `target`, or strip the scheme for display. Each of these is a template override otherwise, repeated per site. Version **1.1.1** on `^9 || ^10 || ^11`, no dependencies beyond core's link field. Two things worth attaching to any conversation about link display. **`target="_blank"` should be a deliberate choice, not a default**: it takes control of the back button away from the user, it is an accessibility concern when unannounced, and where it is used it needs `rel="noopener"` so the opened page cannot reach back through `window.opener`. And **the visible text is what a screen-reader user hears out of context**, because assistive technology can list a page's links in isolation — so a page full of links reading "read more" or "https://…/node/4127" is a page whose link list is useless, which is exactly the problem a good formatter can fix and a careless one can create.

---

- Show a link's domain instead of the URL.
- Fall back to the URL when no title exists.
- Add rel attributes to link fields.
- Strip the scheme from displayed URLs.
- Shorten long URLs in a listing.
- Open external links in a new tab deliberately.
- Improve a references list's readability.
- Show a link title consistently.
- Add a target attribute per display.
- Avoid a template override for links.
- Improve link accessibility.
- Render a link as plain text.
- Show a truncated URL.
- Add noopener to external links.
- Improve a resources page.
- Display a link with a custom label.
- Standardise link rendering across displays.
- Show a friendly label for a document link.
