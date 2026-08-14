<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor 5 max block width gives editors a toolbar dropdown to set how wide a block element renders — regular, wide, or full — by applying a class to the element, without leaving the WYSIWYG.

The module ships a CKEditor 5 plugin (`maxWidth.MaxWidth`) exposed as the `maxWidth` toolbar item labelled "Block width". It declares the tags allowed to carry an arbitrary `class` for this feature (`<table class>`, `<img class>`, `<drupal-media class>`), which Drupal merges into the text format's allowed HTML. A page-attachments hook loads a front-end styles library so the width classes take visual effect on rendered content, and an editor CSS library styles the widget inside CKEditor.

Setup is per text format: enable a CKEditor 5-based format, drag the "Block width" button into its toolbar, and ensure the allowed-tags/classes are permitted. There are no routes, permissions or configuration forms of the module's own — behaviour is entirely the CKEditor 5 plugin plus its CSS.
---
Add the "Block width" button to a CKEditor 5 toolbar; editors then set regular/wide/full width per block.
---
- Let editors mark an image as full-width
- Make a table span a wide content column
- Set a media embed to regular width
- Provide breakout/full-bleed layouts from the WYSIWYG
- Apply width via a class instead of inline styles
- Add the Block width control to a text format's toolbar
- Allow `class` on `<img>` for width styling
- Allow `class` on `<table>` for width styling
- Allow `class` on `<drupal-media>` for width styling
- Load front-end CSS so width classes render
- Give editors consistent width presets
- Avoid custom HTML editing for common width tweaks
- Pair with responsive theme CSS for wide/full styles
- Standardize breakout widths across a site
- Keep width choices within the allowed-HTML sandbox