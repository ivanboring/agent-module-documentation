<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bootstrap Multiselect integrates the Bootstrap Multiselect library, replacing a multiple-select element with a dropdown of checkboxes.

---

The native `<select multiple>` is the worst-understood control on the web. It requires ctrl-clicking or shift-clicking to choose more than one option, which a large proportion of users do not know; it silently discards previous selections when someone clicks normally; it is nearly unusable on a touch screen; and it shows only a few rows at a time regardless of how many options exist. That is why almost every application replaces it, and a checkbox dropdown is the most common replacement because checkboxes are self-explanatory — nobody needs to be told that ticking two boxes selects two things. On a Bootstrap-themed site this library is the natural choice, since it uses the framework's own dropdown component and needs no additional styling. Version **2.0.3** on `^9 || ^10 || ^11`. Two things to check, and they are the ones that decide whether a replacement is an improvement or a regression. **The underlying element must remain a real `<select multiple>`**, with the widget as presentation — because that is what keeps keyboard operation, form submission and assistive technology working; a `div` of checkboxes pretending to be a select needs to reimplement all three and usually reimplements none. And **the control must announce how many options are selected**, since the whole difficulty of a multi-select is that the current state is not visible: a closed dropdown reading "3 selected" tells a screen-reader user what a sighted user can see, and one reading only "Categories" does not. As a general rule, a native control replaced without both of those is worse than the control it replaced.

---

- Replace a multiple-select with checkboxes.
- Improve a category filter's usability.
- Make a multi-select usable on mobile.
- Avoid ctrl-click selection.
- Improve a taxonomy multi-select field.
- Show selected options clearly.
- Improve an exposed filter's controls.
- Replace a long multiple-select list.
- Match a Bootstrap theme's controls.
- Improve a tags field's widget.
- Reduce selection mistakes on a form.
- Improve a role assignment control.
- Make a multi-select searchable.
- Improve an admin filter form.
- Show a count of selected items.
- Replace an unusable select element.
- Improve a preferences form.
- Support multi-selection on touch devices.
