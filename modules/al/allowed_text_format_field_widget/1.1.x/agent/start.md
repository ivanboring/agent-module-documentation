<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Allowed Text Format Field Widget (allowed_text_format_field_widget) — agent index

Field **widget** whose settings decide which text formats are offered on that field. Depends on
core `field` and `filter`. Version **1.1.0-rc1** — a release candidate.
Core requirement `^8 || ^9 || ^10 || ^11`.

**What core does:** offers the intersection of *formats that exist* and *formats this user may use*
— a permission question, not a content-modelling one. So an editor holding **Full HTML** sees it on
**every** text field, including a caption or a summary where it makes no sense.

**Keep this distinction clear — it is what the module is easy to misread as:**
- **It narrows what is offered, not what is permitted.**
- The security boundary remains the **text format's filter chain** and the `use text format X`
  permissions. A user who may use Full HTML still may.
- Anything writing to the field **outside this widget** — a migration, **JSON:API**, a webform
  handler, a second form display — is unaffected.

Treat it as **content-model enforcement and editorial guidance**, never as a control that stops
someone using a format they hold the permission for.
