<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Varbase Components is the component-handling layer of the Varbase distribution: helper functions for rendering components and a theme switcher so components resolve against the right theme.

---

Varbase is a Drupal distribution, and this is one of its internal building blocks rather than a module you would install on an unrelated site. Its job is to make component-based theming work consistently within Varbase's assumptions — an `ActiveThemeChangeSubscriber` that switches the active theme when components are being rendered, and a hook class supplying the helpers Varbase's own templates call.

The theme-switching part is the interesting bit and the reason the module exists. Components rendered in an administrative context — Layout Builder previews, admin forms that embed front-end markup — will otherwise resolve their templates and libraries against the admin theme, and the result is a preview that looks nothing like the page. Switching the active theme for the duration of the render fixes that.

**The core requirement is `~11.4.0`**, which pins it to a single minor version of Drupal. That is normal for a distribution component, where the distribution controls the whole stack, and it is a strong signal about the intended use: this travels with Varbase and its release cycle, not independently. Installing it on a non-Varbase site will pin your core updates to whatever Varbase supports.

---

- Render Varbase components consistently.
- Switch the active theme while rendering components.
- Make a Layout Builder preview match the front end.
- Supply component helpers to Varbase templates.
- Keep component theming correct in admin contexts.
- Support Varbase's component-based page building.
- Track the Varbase distribution's release cycle.
- Understand a Varbase site's component layer.
- Audit an inherited Varbase installation.
- Debug a component rendering with the wrong theme.
- Plan core updates around a distribution's pinned minor.
- Decide whether a component belongs in Varbase or the theme.
- Confirm the site is Varbase before installing it.
- Trace a component that renders with admin styling.
- Review the theme switcher's effect on caching.
