<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Layout Builder Widget puts Layout Builder inside the entity edit form, so an editor arranges a page's layout in the same place they write its content instead of on a separate screen.

---

Core's Layout Builder lives behind its own tab: you save the node, go to Layout, arrange sections, and come back. That separation is defensible — layout and content are different concerns with different save semantics — and it is friction for the common case where a page *is* its layout, as on a landing page assembled entirely from components. Putting the layout interface into the form collapses the two steps and makes the relationship obvious. This module supplies the widget, depending on core `layout_builder` and targeting `^10 || ^11`. Two things to check when adopting it. The **save semantics** change: core's Layout Builder tab has its own save and its own tempstore, and an inline widget has to reconcile that with the entity form's, so verify behaviour around unsaved changes, validation errors and revisions rather than assuming. And **access** is Layout Builder's — the widget surfaces the same interface, so who may change a layout is still governed by Layout Builder's permissions, which is the right arrangement and worth confirming rather than inferring.

---

- Edit layout on the node form.
- Build a landing page in one screen.
- Reduce switching between content and layout.
- Make layout part of authoring.
- Arrange sections while writing.
- Improve the editorial flow for component pages.
- Avoid a separate Layout tab.
- Speed up page assembly.
- Keep content and layout together.
- Reduce editor confusion.
- Support a component-driven content type.
- Edit layout in a modal form.
- Improve a marketing page workflow.
- Reduce training on Layout Builder.
- Keep layout changes with the entity save.
- Support inline page building.
- Simplify a two-step process.
- Improve Layout Builder adoption.
