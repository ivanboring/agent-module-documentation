<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Easy Responsive Tabs to Accordion (field_group_easy_responsive_tabs) — agent index

**Field-group formatters** rendering a group as **tabs on wide screens and an accordion on narrow
ones**. Requires `field_group`. Version **4.0.0**. Core requirement `^9.4 || ^10 || ^11`.

**Why the switch rather than one or the other:** tabs need horizontal room for their labels and
break on a phone (the row wraps illegibly or scrolls sideways); an accordion works at any width and
wastes vertical space on a desktop. Choosing one for both is a compromise.

**Why field_group is the right layer:** it already organises fields into tabs, fieldsets and
details across **form and view** displays. This adds a rendering option to an existing structure
rather than introducing a parallel one — and the grouping is configured once.

**Accessibility is harder here than for plain tabs, because the semantics must change with the
layout:**
- tab mode needs `role="tablist"` / `"tab"` / `"tabpanel"`, `aria-selected`, **arrow-key**
  navigation;
- accordion mode needs a **button per header** with `aria-expanded`.

The component must **switch roles at the breakpoint, not merely restyle**. Test with a screen
reader at **both** widths.
