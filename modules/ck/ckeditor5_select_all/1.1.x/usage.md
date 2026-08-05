<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor 5 Select All adds a Select All button to the editor toolbar, giving a visible control for something otherwise only available as a keyboard shortcut.

---

Selecting all content in the editor is Ctrl+A, which is fine for anyone who knows it and works reliably only when focus is already inside the editing area — click outside it and the same shortcut selects the whole page instead. A toolbar button removes both problems: it is discoverable for editors who do not use keyboard shortcuts, and it acts on the editor's content regardless of where focus was. That makes it a small accessibility improvement as well as a convenience, since it gives users who navigate by pointing or by assistive technology an explicit control for an operation that otherwise assumes a keyboard. The module is a CKEditor 5 plugin registered through the standard mechanism, depends on core only, and targets `^10 || ^11`. Like every CKEditor 5 plugin it is enabled per **text format** through the toolbar configuration, so which editors get it is a text-format decision rather than a site-wide one.

---

- Add a Select All button to the toolbar.
- Give editors a discoverable select-all control.
- Select editor content without a keyboard.
- Improve accessibility of the editor.
- Help editors clear a field's content.
- Select all before applying a format.
- Support editors unfamiliar with shortcuts.
- Avoid selecting the whole page by mistake.
- Enable per text format.
- Support pointer-only users.
- Speed up replacing a field's content.
- Improve a bulk formatting workflow.
- Give assistive-technology users an explicit control.
- Select all before copying content.
- Reduce editor training needs.
- Add a familiar word-processor control.
- Support tablet editing.
- Clear a field reliably.
