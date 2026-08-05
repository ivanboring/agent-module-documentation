<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Visual Editor provides visual page editing — arranging and editing content in something closer to its rendered form rather than in a stack of form fields — with a submodule for Paragraphs.

---

Drupal's editing model is a form: fields in a column, save, then look at the result. It is precise, auditable and unlike every other tool an editor has used, and the gap is felt most on component-assembled pages where the form gives no sense of the page's shape. Visual editing narrows that gap, and the Drupal ecosystem has several attempts at it — core's Layout Builder from one direction, in-place editing from another, and this from a third, with `visual_editor_paragraphs` extending it to paragraph-based pages specifically. Core requirement is `^10 || ^11`. Two things are worth establishing before adopting any visual editor, because they are where these tools differ and where they disappoint. **Fidelity**: whether what the editor sees is genuinely the rendered output or an approximation, since an approximation that diverges is worse than an honest form. And **what it writes**: a visual editor that produces markup rather than structured field values trades the data model for convenience, which is the thing Drupal's field system exists to protect — so check whether editing through it preserves the same values the form would produce, particularly for translation, revisions and any consumer reading fields through an API.

---

- Edit a page closer to its rendered form.
- Arrange paragraphs visually.
- Reduce the gap between editing and preview.
- Give editors a familiar interface.
- Build a landing page visually.
- Reduce save-and-check cycles.
- Improve adoption among non-technical editors.
- Edit component-based pages.
- Reorder sections by dragging.
- Reduce training on Drupal's form model.
- Improve a marketing team's workflow.
- Edit text in place.
- See layout while editing.
- Support a component library visually.
- Reduce editorial friction.
- Preview changes immediately.
- Support a design-led editing process.
- Edit paragraphs without nested forms.
