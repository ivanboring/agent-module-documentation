<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor 5 Select All (ckeditor5_select_all) — agent index

Adds a **Select All** button to the CKEditor 5 toolbar. Core-only dependencies.
Core requirement `^10 || ^11`.

Key facts:
- A CKEditor 5 plugin, enabled **per text format** through the toolbar configuration — so which
  editors get it is a text-format decision, not site-wide.
- **Why it is more than a convenience:** Ctrl+A acts on the editor only when focus is already
  inside the editing area; click outside and it selects the whole page. A toolbar button removes
  that ambiguity and gives pointer-only and assistive-technology users an explicit control for an
  operation that otherwise assumes a keyboard.
- No routes, permissions or configuration of its own.
