<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Attachments as Tabs renders a view's attachment displays as tabs on the parent display, turning several attached views into a tabbed interface without custom templates.

---

Views attachments already let one display hang off another — a "related content" list beneath a main listing, a summary above a table. What they do not do is give you a way to present several of them as alternatives rather than as a stack, which is what a tabbed panel is. Doing that by hand means a preprocess function, a template and some JavaScript per site; this module makes it a display setting, with theme-specific submodules for **Bootstrap** and for core's **Olivero** so the markup matches the theme's own tab component rather than looking imported. Version is **1.1.2** on `^9 || ^10 || ^11`, depending on core `views`. The accessibility point applies to every tab implementation and is the thing to check: a correct tab set needs `role="tablist"`, `role="tab"` and `role="tabpanel"`, `aria-selected`, arrow-key navigation between tabs, and only the active panel exposed — markup that merely looks like tabs is a set of links to hidden divs, which reads badly in a screen reader. Also worth remembering that content in an inactive tab is still in the DOM: it is rendered, it costs query time, and it is findable by in-page search.

---

- Show related views as tabs.
- Present alternative listings compactly.
- Turn attachments into a tabbed panel.
- Match Bootstrap's tab component.
- Match Olivero's tab styling.
- Group several views on one page.
- Reduce vertical page length.
- Show categories as tabs.
- Present a dashboard's sections.
- Avoid custom tab templates.
- Show a summary and a detail view.
- Organise a long listing page.
- Present filtered variants side by side.
- Build a tabbed report page.
- Show archive years as tabs.
- Keep related content on one page.
- Support a themed tab interface.
- Reduce navigation between pages.
