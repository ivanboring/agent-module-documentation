<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Overview Field (overview_field) — agent index

Field type whose **allowed values come from code**, not config: a select widget populated by
`hook_overview_field_options_alter()`. Depends on core `field`. Submodule
`overview_field_example` is a working implementation. Version **2.0.2**.
Core requirement `^9 || ^10 || ^11`.

Key facts:
- **The pattern:** modules register the overviews they can render → the editor picks one from the
  select → the formatter dispatches on the stored key. The option list is a **developer** concern
  that changes with code; the choice is an **editorial** one.
- **Deliberately thin.** Field stores a 255-char string (`varchar`, optionally `varchar_ascii`);
  widget is a select with a "No overview" empty option; the formatter renders the value. It is the
  plumbing you would otherwise hand-write, and no more.
- Nothing works until a module implements the alter hook — an empty select is the expected
  out-of-box state, not a bug.
