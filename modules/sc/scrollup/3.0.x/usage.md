<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Scrollup adds the floating "back to top" button that appears once a visitor has scrolled down a long page.

---

The control is a small usability convention with a real purpose on long pages, particularly on mobile where there is no keyboard Home key and the alternative is a lot of swiping. This module supplies it configurably — a settings form at `/admin/config/system/scrollup` under `administer site configuration` controls appearance and behaviour, with `config/schema` for the settings — depending on nothing beyond core and targeting `^10.3 || ^11.0`, an unusually narrow range that excludes earlier Drupal 10 minors. Three things are worth getting right when configuring it, all accessibility rather than aesthetics: the button must be **keyboard reachable and focusable**, since a control only usable by pointer excludes exactly the users who benefit most from not having to scroll; it needs an accessible name, because an icon-only button announces nothing useful; and the scroll itself should respect `prefers-reduced-motion`, since an animated jump to the top is precisely the kind of motion that causes problems for people with vestibular disorders. Those are the same considerations recorded for `animated_scroll_to` in wave 61.

---

- Add a back-to-top button to long pages.
- Improve navigation on mobile.
- Help visitors return to the menu.
- Show the button after scrolling.
- Configure the button's position.
- Improve usability on a documentation page.
- Reduce swiping on long articles.
- Style the button to match a theme.
- Add the control without theme code.
- Improve a long listing page.
- Support readers of long-form content.
- Show the button only on selected pages.
- Provide a keyboard-reachable control.
- Improve a policy document's navigation.
- Reduce friction on a long form.
- Add a familiar UI convention.
- Support a mobile-first audience.
- Configure appearance centrally.
