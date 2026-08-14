<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor 5 Definition List Fix (ckeditor5_definition_list_fix) — agent index

**CKEditor 5 plugin that removes unwanted `<p>` wrappers inside `<dt>`/`<dd>` definition-list items.**

- **Version:** 1.0.x (1.0.2)
- **Core:** ^10 || ^11 || ^12
- **Depends:** `ckeditor5`
- **Plugin:** `definitionListFix.CKEditor5DefinitionListFixPlugin` (`js/definition-list-fix.js`), declared in `ckeditor5_definition_list_fix.ckeditor5.yml`.
- **Allowed elements:** `<dl id class style>`, `<dt id class style>`, `<dd id class style>`, `<i lang dir class id title style>`; provides a toolbar item + SVG icon.
- **No PHP:** no routes, permissions, services, or config; JS/CSS libraries only.

**Security:** editor-only module with no server request surface, no routes and no permissions. Markup handling remains governed by the text format's filters and the `use text format` permissions. No security-relevant code.
