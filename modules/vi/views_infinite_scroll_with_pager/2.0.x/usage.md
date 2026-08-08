<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Infinite Scroll With Pager renders a normal pager underneath a Views Infinite Scroll display, so the same view is navigable without JavaScript and crawlable by search engines.

---

Infinite scroll is a pleasant interaction and a poor URL scheme. Content past the first page has no address, so a crawler indexes page one and stops, a visitor cannot link to what they found, and anyone without JavaScript sees a truncated list with no way forward. Those are three different problems with one shared cause: the pager was replaced rather than supplemented.

This module supplements it. Infinite scroll continues to work for people who have JavaScript; a standard pager is also rendered, giving every page a real URL. It is the progressive-enhancement arrangement the original module skips.

Theming is expected to be overridden and the README explains exactly how: copy `views-infinite-scroll-with-pager.html.twig` from the module into your theme's `templates` folder, then swap the included pager template for your framework's — the example replaces `{% include '@system/pager.html.twig' %}` with `{% include '@bootstrap/system/pager.html.twig' %}`. That is a two-line change and worth doing, because the default include is core's markup.

Worth confirming after installation: that the pager links produce the same result set the scroll produces, and that the pager is not hidden by CSS from a theme that assumed infinite scroll meant no pager.

---

- Make an infinite-scroll view crawlable.
- Give every page of a view a real URL.
- Support visitors without JavaScript.
- Let a visitor link to a specific page.
- Add a pager under infinite scroll.
- Improve SEO on a scrolling listing.
- Override the pager template in your theme.
- Use a Bootstrap pager with infinite scroll.
- Keep infinite scroll for JavaScript users.
- Apply progressive enhancement to a listing.
- Copy the twig template into the theme.
- Swap the included pager template.
- Check the pager is not hidden by theme CSS.
- Verify pager results match scroll results.
- Keep an accessible fallback for keyboard users.
- Index deep listing pages.