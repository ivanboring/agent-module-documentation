<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor 5 Definition List Fix is a CKEditor 5 plugin that prevents CKEditor from wrapping the contents of definition-list terms (`<dt>`) and definitions (`<dd>`) in unwanted `<p>` paragraph tags.

---

Drupal's CKEditor 5 definition-list handling can inject paragraph wrappers inside `<dt>`/`<dd>` elements, producing markup that is semantically noisy and hard to style. This module registers a CKEditor 5 plugin (`definitionListFix.CKEditor5DefinitionListFixPlugin`, in `js/definition-list-fix.js`) that corrects that behaviour, keeping `<dl>`, `<dt>`, `<dd>` (and inline `<i>`) content clean. It is declared in `ckeditor5_definition_list_fix.ckeditor5.yml` with the allowed source elements (`<dl id class style>`, `<dt ...>`, `<dd ...>`, `<i ...>`) and a toolbar item, and provides its editing and admin libraries plus an SVG icon.

There is no PHP: no routes, permissions, services, or configuration screens of its own — it only depends on core `ckeditor5`. You enable the module and add its toolbar button to the relevant text-format CKEditor 5 toolbar (and ensure the definition-list elements are allowed in the format). Being editor-only, it has no runtime request surface; sanitization and access continue to be governed by the text format's filters and permissions.
---
Stop `<p>` wrappers appearing inside `<dt>` terms.
- Stop `<p>` wrappers appearing inside `<dd>` definitions.
- Produce clean `<dl>/<dt>/<dd>` markup in CKEditor 5.
- Add the Definition List Fix button to a format's toolbar.
- Allow definition-list elements in a text format.
- Keep inline `<i>` markup inside definition lists.
- Fix definition-list output on migrated content when re-edited.
- Improve semantic HTML for glossary-style content.
- Make definition-list content easier to style with CSS.
- Use alongside core's source-editing for `dl` structures.
- Enable per text format (e.g. Full HTML) as needed.
- Avoid manual source cleanup after editing definition lists.
- Preserve id/class/style attributes on `dl/dt/dd`.
- Keep authors in the WYSIWYG instead of the source view.
- Ship a toolbar icon for the plugin.
- Load only editor libraries (no PHP/runtime endpoints).
