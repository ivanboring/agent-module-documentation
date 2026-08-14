<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Back-2-Top adds a configurable “back to top” button, implemented in dependency-free vanilla JavaScript, that appears when a page is taller than the viewport and scrolls the user smoothly to the top.

The whole module is a settings form plus a `hook_page_attachments()` that attaches a library and passes configuration to JS via `drupalSettings`. Admins control the button's on/off state, corner position (bottom-left/center/right), color, opacity, size, image (built-in arrow/chevron/triangle or a custom uploaded image via a managed file), and whether it also shows on admin pages. There are no routes beyond the settings form and no external requests.

Typical setup: enable the module, open Configuration → User Interface → Back-2-Top Settings, toggle it on, and adjust appearance and visibility.

---

Short summary: a themeable vanilla-JS scroll-to-top button configured from one admin form.

It solves the common UX need for a scroll-to-top affordance on long pages without pulling in jQuery or a third-party library. It works by attaching a small JS behaviour and CSS, parameterised by config stored in `back_2_top.settings`.

Operationally: the only route is the admin settings form (permission *administer site configuration*); the button is disabled unless `enabled` is set, and can be excluded from admin routes. A custom button image is stored as a managed file. No security-sensitive surface.

---

- Enable the module to add a back-to-top button site-wide.
- Turn the button on or off from the settings form.
- Position the button at bottom-left, bottom-center, or bottom-right.
- Set the button color with a color picker.
- Adjust the button opacity.
- Set the button size in pixels.
- Choose a built-in arrow, chevron, or triangle icon.
- Upload a custom image for the button.
- Show or hide the button on admin pages.
- Provide smooth scrolling to the top of long pages.
- Improve navigation UX on long articles and listings.
- Keep the button hidden until the page exceeds the viewport height.
- Ship the feature without any JavaScript framework dependency.
- Match the button color to the site theme.
- Restrict configuration to users with *administer site configuration*.
- Tune button prominence via opacity and size for accessibility.
- Remove the button quickly by disabling it in config.
