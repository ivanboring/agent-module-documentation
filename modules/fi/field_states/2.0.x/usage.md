<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Field states models a field's allowed values as states with defined transitions, so a value can only move to another the configuration permits.

---

An options field lists values and lets an editor pick any of them, which is right for a category and wrong for a status. A support ticket should not jump from *new* straight to *closed* without passing through *resolved*; an application should not return from *approved* to *draft*. That is a state machine — states plus legal transitions — and expressing it as a plain options list means the rule lives in a policy document and gets broken. This module adds the transition layer over a field, with a per-field state-machine screen at `/field-states/state-machine/{field}`, depending on core `views` and `options`. Version **2.0.4**, core requirement **`^11 || ^12`** — Drupal 11 or later only, reaching into a major that does not exist yet. Two permissions exist, `access states` for viewing and `admin states` for editing, but there is a **bug worth knowing before evaluating the module**: the form checks `hasPermission('Administer transition states')`, which is the permission's *title*, not its machine name `admin states`. `hasPermission()` returns FALSE for a name it does not recognise, so the editing control resolves to false for everyone except user 1, who bypasses permission checks entirely. The effect is fail-closed rather than fail-open — nothing is exposed that should not be — but the `admin states` permission is dead, and a site that grants it will find nothing happens. Test as a non-uid-1 account before drawing conclusions about what the module can do.

---

- Enforce a ticket's status flow.
- Prevent an illegal status jump.
- Model an application's lifecycle.
- Require a review step before closing.
- Define allowed transitions per field.
- Enforce an approval sequence.
- Model a publication pipeline.
- Restrict who may change a state.
- Prevent reverting an approved item.
- Model an order's progress.
- Document a workflow in configuration.
- Enforce a compliance process.
- Model a recruitment pipeline.
- Prevent skipping a mandatory stage.
- Show valid next steps to an editor.
- Model an equipment booking status.
- Support an auditable process.
- Constrain an options field's changes.
