<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor5 Wiris (ckeditor_wiris) — agent index

MathType/ChemType equation editing for **CKEditor 5**. Depends on core `ckeditor5`.
Core requirement `^10 || ^11` (composer says `^9.3 || ^10 || ^11`).

Two things to establish before recommending it:
- **The release is `3.0.0-alpha4` — alpha.**
- **MathType and ChemType are commercial Wiris products.** This module is the integration, not a
  licence. Confirm licensing, and confirm whether rendering is self-hosted or served from
  Wiris's infrastructure — the latter makes equation display dependent on an external service and
  is a data-flow question for a privacy review.

Key facts:
- CKEditor 5 plugin registration is `ckeditor_wiris.ckeditor5.yml`; the plugin itself is a real
  CKEditor 5 build (`js/ckeditor5_plugins/` source, `js/build/` bundle, `webpack.config.js`,
  `babel.config.js`, `package.json`/`package-lock.json`). Rebuilding after a change means running
  the webpack build, not just clearing caches.
- Two stylesheets, deliberately separated: `css/wiris.ckeditor.css` (in-editor) and
  `css/wiris.admin.css` (admin UI).
- Enabled per **text format** via the CKEditor 5 toolbar configuration, so which authors get it
  is a text-format decision.
- Output is MathML in the content — an accessibility and searchability gain over equation
  images, but it means the text format's allowed-tags configuration must permit the MathML
  elements or the filter will strip them.
