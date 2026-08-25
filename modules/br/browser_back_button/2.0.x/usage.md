<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Browser Back Button provides a placeable block that renders a clickable "Back" control which sends the visitor one step back in their browser history.

---

Install and enable the module like any contributed module (`composer require drupal/browser_back_button`, then enable it), after which it adds no admin section, permissions, routes, or settings page of its own. Everything happens through **Block layout** (`/admin/structure/block`): place the **"Browser Back Button Block"** in any region, open **Configure block**, and set **Back Button Text or Image** — a rich-text (`text_format`) field that accepts plain text (default `Back`) or markup such as an `<img>` tag for an icon. On the front end the block renders as `<div id="back-button-wrapper">…your text…</div>`; the module's JavaScript (library `browser_back_button/browser_back_button.history`, built on `core/drupal`, `core/jquery` and `core/once`) binds a click handler to that element and calls `window.history.back()`, so clicking it is equivalent to pressing the browser's Back button. The button text is stored through a text format and printed with `check_markup`, so the HTML you can use is bounded by the formats available to the admin placing the block. Note that although the module's description mentions a "page reload option" (a `reload_status` setting exists in config), the shipped 2.0.2 JavaScript only navigates back and does not force a reload. Because the control simply mirrors the browser Back button, it is most useful where you want an obvious, styleable in-page Back affordance — multi-step flows, deep detail pages, kiosk or touch layouts — rather than as a fix for cache or state problems.

---

- Add an on-page "Back" button to a content region.
- Give a multi-step form or wizard a visible Back control.
- Provide a Back link on deep detail or product pages.
- Add a large, touch-friendly Back button for a kiosk display.
- Place a styled Back button in a sidebar block.
- Use an image or icon as the Back button instead of text.
- Offer a Back control on mobile layouts with little browser chrome.
- Add a Back button to a printable or embedded view.
- Give a documentation or help section an in-page Back link.
- Put a Back button at the bottom of a long article.
- Add a Back affordance to a landing page built from blocks.
- Provide a Back button inside a modal-driven flow.
- Add a themeable Back control that matches the site design.
- Show the Back button only on certain pages via block visibility settings.
- Re-label or localize the Back button per placement.
- Add a Back button to a members' dashboard region.
- Give a step-by-step checkout a consistent Back control.
- Add a Back link to a search results page.
- Provide a Back button for a gallery or media detail page.
- Render the Back control as plain page markup you can style with CSS.

