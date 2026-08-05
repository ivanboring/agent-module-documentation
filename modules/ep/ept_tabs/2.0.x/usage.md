<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Tabs adds a ready-made Tabs paragraph type, where each tab can hold rich text, an embedded view or a block.

---

Part of the Extra Paragraph Types family, sharing `ept_core` for the common settings. What distinguishes this one is what a tab may contain: alongside `ept_core` and `paragraphs` it requires **`block_field`** and **`viewsreference`**, so a tab can be a placed block or an embedded view rather than only a body of text. That makes it a genuine page-composition tool — a product page with Description, Specifications and a Reviews view; a department page with Overview, Staff listing and Contact block — rather than a text-only accordion. Version **2.0.1**, core requirement `^10.1 || ^11 || ^12`. The dependency to weigh is **`jquery_ui_tabs`**: jQuery UI was **removed from Drupal core** and the remaining pieces live in contrib modules maintained on a best-effort basis, deprecated in direction if not in fact, so a component built on it is built on a library the project is moving away from. The accessibility requirements are the same as for any tab set and worth checking rather than assuming — `role="tablist"`, `role="tab"`, `role="tabpanel"`, `aria-selected`, arrow-key movement between tabs, and only the active panel exposed — with the note that jQuery UI's tabs implementation is one of the better ones on this front, which is the counterweight to its deprecation. And as with every tab implementation, inactive panels are rendered and in the DOM: they cost query time, and an embedded view in a tab nobody opens is still executed.

---

- Put a view inside a tab.
- Show specifications on a product page.
- Add a tabbed section to a page.
- Place a block in a tab.
- Build a department overview with tabs.
- Show reviews in a separate tab.
- Organise long content into tabs.
- Add a staff listing tab.
- Compose a page from mixed content.
- Reduce page length with tabs.
- Show contact details in a tab.
- Build a service page with sections.
- Embed a filtered listing in a tab.
- Give editors a ready-made tab component.
- Organise documentation into tabs.
- Show related content in a tab.
- Build a comparison layout.
- Add tabs without custom code.
