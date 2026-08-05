<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Form Steps (entity_form_steps) — agent index

Turns an **entity form** into a multi-step wizard, with **`field_group`** defining which fields
belong to which step — so grouping happens in the form display where a site builder already works,
not in code. Version **1.1.7**. Core requirement `^9 || ^10 || ^11`.

**Why not the alternatives:** the Form API multi-step pattern is code that rebuilds state by hand;
moving the form to **Webform** gives an excellent survey tool but **not an entity form**, so the
result is not a node or a user profile.

**Three things decide whether the wizard beats the wall it replaces:**
1. **Validation timing.** Errors must surface **on the step that caused them**, not at the end —
   otherwise the wizard is worse than one page.
2. **Partial saves.** Decide what abandoning at step three leaves behind. An unsaved wizard loses
   the work; a saved one creates **incomplete entities** the rest of the site must tolerate.
3. **Backward navigation.** Users must be able to go back and change an answer without losing later
   steps — the requirement most step implementations quietly fail.
