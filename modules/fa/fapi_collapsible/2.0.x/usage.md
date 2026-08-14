<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
FAPI Collapsible provides a lightweight collapsible container for the Form API — a fieldset-like wrapper whose contents can be expanded or collapsed, driven by a theme template rather than core's `details` element.
---
The module registers a `collapsible` theme hook (`hook_theme`) and a preprocess function that maps the render element's properties (`#children`, `#name`, `#title`, `#id_collapsible`, `#expanded`, `#description`, `#description_attributes`) into template variables, computing a `close` flag from `#expanded`. Form/render-array authors add a collapsible region by using the element and supplying those keys; the accompanying template renders the header/title and the collapsible body with the appropriate attributes.

It is a small presentational helper for building custom forms and render output where you want independently toggleable sections without the semantics of core `details`. There are no routes, permissions, services or external calls, so it is safe to enable anywhere; its footprint is purely the theme hook and preprocessing.
---
- Add a collapsible section to a custom form.
- Give the section a title via `#title`.
- Start a section expanded with `#expanded` = TRUE.
- Start a section collapsed with `#expanded` = FALSE.
- Attach a description under the collapsible header.
- Set custom attributes on the description via `#description_attributes`.
- Assign a DOM id with `#id_collapsible` for JS/CSS targeting.
- Name a collapsible region with `#name`.
- Group unrelated form controls into toggleable blocks.
- Render collapsible output outside of forms via the render array.
- Override the `collapsible` template in a theme for custom markup.
- Preprocess additional variables by extending the theme hook.
- Build accordion-like UIs from multiple collapsible elements.
- Use as a fieldset alternative when `details` semantics are unwanted.
- Keep long configuration forms manageable with collapsible groups.
