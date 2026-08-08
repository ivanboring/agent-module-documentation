<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Infinite Scroll With Pager (views_infinite_scroll_with_pager) — agent index

Renders a **standard pager alongside** Views Infinite Scroll, so the view stays crawlable and
usable without JavaScript. Version **2.0.3**. Core `^9 || ^10 || ^11`.
Depends on contrib `views_infinite_scroll`. No routes, permissions or config page.

Solves the three consequences of replacing a pager with infinite scroll: no URL for page 2+,
crawlers stop at page one, non-JS visitors get a dead end.

**Theming, per the README:** copy `templates/views-infinite-scroll-with-pager.html.twig` into the
theme's `templates/` and swap the include —
`{% include '@system/pager.html.twig' %}` → `{% include '@bootstrap/system/pager.html.twig' %}`.

Check after install: pager results match scroll results, and theme CSS is not hiding the pager.