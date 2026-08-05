<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Easy Responsive Tabs to Accordion adds field-group formatters that render a group of fields as tabs on wide screens and as an accordion on narrow ones.

---

Tabs and accordions solve the same problem — too much content for one screen — at different widths. Tabs need horizontal room for their labels and stop working on a phone, where the row either wraps into an unreadable block or scrolls sideways; an accordion works at any width and wastes vertical space on a desktop where the tabs would have fitted. Choosing one for both is a compromise; switching between them at a breakpoint is what the design usually wanted. This module makes that a **field group** formatter, which is the right layer — `field_group` already organises fields into tabs, fieldsets and details in both form and view displays, so this adds a rendering option to a structure that already exists rather than introducing a parallel one. It also means the grouping is configured once and applies to the node form as well as the rendered page, if the site wants it in both. Version **4.0.0** on core `^9.4 || ^10 || ^11`, requiring `field_group`. The accessibility requirement is the one that separates a working implementation from a decorative one, and it is harder here than for plain tabs because **the semantics have to change with the layout**: a tab set needs `role="tablist"`, `role="tab"`, `role="tabpanel"`, `aria-selected` and arrow-key navigation, while an accordion needs a button per header with `aria-expanded` — so the component must switch roles at the breakpoint, not merely restyle. Test with a screen reader at both widths, not one.

---

- Show field groups as tabs on desktop.
- Switch to an accordion on mobile.
- Organise a long content type's display.
- Group specifications into tabs.
- Present a product's details responsively.
- Reduce page length on mobile.
- Show related fields together.
- Use field groups for tabbed display.
- Organise a node edit form into tabs.
- Present a policy document by section.
- Group contact details separately.
- Improve a dense page's readability.
- Show a course's modules as tabs.
- Present staff details in sections.
- Organise a profile's fields.
- Improve mobile content navigation.
- Show technical details in a tab.
- Structure a long product page.
