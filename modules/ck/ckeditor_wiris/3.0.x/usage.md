<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor5 Wiris adds MathType and ChemType to CKEditor 5, giving editors a visual equation builder for mathematical and chemical notation instead of hand-written MathML or LaTeX.

---

Scientific and educational sites hit the same wall: an equation is structured content, and a rich-text editor that can only produce paragraphs and images forces authors into images of equations — unsearchable, unscalable and inaccessible to screen readers. Wiris's MathType and ChemType are the established commercial answer, producing MathML that renders and reads properly. This module is the Drupal 10/11 CKEditor 5 integration: `ckeditor_wiris.ckeditor5.yml` declares the plugin to Drupal, `js/ckeditor5_plugins` holds the source and `js/build` the compiled bundle, with `webpack.config.js`, `babel.config.js` and `package.json` present because the plugin is a real CKEditor 5 build artefact. Two stylesheets separate editor and admin styling. Its only Drupal dependency is core `ckeditor5`. Two things to establish before adopting it: **the release is 3.0.0-alpha4**, an alpha, and MathType/ChemType are **commercial Wiris products** — the module integrates them, it does not license them, so check the licensing and whether the rendering service is self-hosted or Wiris-hosted, since the latter means equation rendering depends on an external service.

---

- Let authors write mathematical equations visually.
- Add chemical notation to CKEditor 5.
- Produce MathML rather than images of equations.
- Make equations readable by screen readers.
- Keep equations searchable and selectable.
- Support a maths or science curriculum site.
- Scale equations with the surrounding text.
- Edit an existing equation rather than replacing an image.
- Give teachers a familiar equation editor.
- Include formulas in exam or lesson content.
- Add equations to a research publication site.
- Enable the toolbar button per text format.
- Support chemical structures in editorial content.
- Avoid LaTeX syntax for non-technical authors.
- Keep equation markup in the content, not a file.
- Render equations consistently across themes.
- Migrate equation images to real markup.
- Meet accessibility requirements for formulas.
