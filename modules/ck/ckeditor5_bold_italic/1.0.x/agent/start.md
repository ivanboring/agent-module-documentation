<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor5 Bold and Italic (ckeditor5_bold_italic) — agent index

**Alters the core CKEditor 5 bold/italic plugins so they output `<b>`/`<i>` instead of `<strong>`/`<em>`.**

- **Version:** 1.0.x
- **Core:** ^9.4 || ^10 || ^11
- **Dependency:** ckeditor5
- **Mechanism:** `ckeditor5_bold_italic_ckeditor5_plugin_info_alter()` rewrites the `ckeditor5_bold` and `ckeditor5_emphasis` plugin definitions (bold gains `drupalBold.DrupalBold` and the module's `internal.drupal.ckeditor5.bold` library; italic repoints to `core/ckeditor5.basic`).
- **Config/routes/permissions:** none.

**Security:** Pure editor plugin-definition alter; no routes, input handling, or stored config. No security findings.