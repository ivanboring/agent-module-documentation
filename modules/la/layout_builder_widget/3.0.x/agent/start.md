<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder Widget (layout_builder_widget) — agent index

Puts **Layout Builder inside the entity edit form**. Depends on core `layout_builder`.
Core requirement `^10 || ^11`.

Key facts:
- **Verify save semantics rather than assuming them.** Core's Layout Builder tab has its own save
  and its own **tempstore**; an inline widget must reconcile that with the entity form's. Test:
  unsaved changes, validation errors, and **revision** behaviour.
- **Access is Layout Builder's** — the widget surfaces the same interface, so who may change a
  layout is still governed by Layout Builder's permissions. That is the right arrangement; confirm
  it on the site rather than inferring it.
- Pairs conceptually with `layout_builder_quick_add` (wave 68) — both reduce Layout Builder's
  step count; this one collapses the content/layout split, that one the add-block flow.
