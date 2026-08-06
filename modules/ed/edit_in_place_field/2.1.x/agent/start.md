<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Edit in place field (edit_in_place_field) — agent index

Edits a field **directly on the rendered page**, saving without opening the node form. Permission:
`edit in place field editing permission`. Version **2.1.1**.
Core requirement `^10.3 || ^11 || ^12`.

**Context:** core had this as **Quick Edit** and **removed it in Drupal 10**, leaving a real gap.
The case for it is the small correction — a typo, a wrong date, a changed phone number — where
opening a forty-field form to change three characters is enough friction that errors stay
uncorrected. The case against is that it bypasses what the form provides: validation messages,
related fields, the revision log.

**The permission is the thing to be careful about — a save endpoint is a write path, and a flat
permission is rarely the right gate.** Verify the endpoint checks, per request:
1. the user may **edit this entity** — `$entity->access('update')`;
2. they may **write this field** — `$items->access('edit')`;
3. the value passes the field's **validation constraints**, not merely that it is stored;
4. the request carries a **CSRF token**.

**A permission alone answers none of those**, and an in-place save that trusts the field name it is
given is a way to write fields the form would not have shown. Check each before granting it on a
site where field-level access matters.
