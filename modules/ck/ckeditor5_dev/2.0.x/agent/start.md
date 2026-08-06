<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor 5 Dev tools (ckeditor5_dev) — agent index

Enables the official **CKEditor 5 Inspector** in Drupal, adds a loaded-plugin report, and ships a
plugin starter template. Version **2.0.1**. Core `^10.5 || ^11 || ^12`. Depends on `ckeditor5`.

Route: `/admin/reports/ckeditor5-plugins`, `_permission: 'access ckeditor5 plugin report'`.
Scaffold: `ckeditor5_plugin_starter_template/`.

Answers the two questions that consume CKEditor 5 integration time: *what is actually in the build
for this text format*, and *what is the editor model doing* (the Inspector — the editor's model is
not the DOM, so DOM debugging does not answer it).

**Development tool — do not leave it enabled in production.** The Inspector is a debugging overlay
and the report exposes editor configuration. This is exactly the class of module `vitals_extra`'s
`DevModules` check looks for.