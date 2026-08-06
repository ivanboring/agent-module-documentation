<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Edit in place field lets a field be edited directly on the rendered page, saving without opening the node form.

---

Core had this as **Quick Edit** and removed it in Drupal 10, which left a real gap rather than settling the question. The case for in-place editing is strongest for the small correction: a typo in a heading, a wrong date, a phone number that changed. Opening the full edit form for that means loading a page with forty fields, finding the one, changing three characters, saving, and returning — and the friction is enough that small errors stay uncorrected, which is how a site accumulates them. The case against is that in-place editing bypasses the context the form provides — validation messages, related fields, the revision log — and encourages changes made without seeing what else they affect. Version **2.1.1** on `^10.3 || ^11 || ^12`, with a permission named `edit in place field editing permission`. **The permission is the thing to be careful about, because a save endpoint is a write path and a flat permission is rarely the right gate.** What matters is whether the endpoint checks, per request: that this user may **edit this entity** (`$entity->access('update')`), that they may **write this field** (`$items->access('edit')`), that the value passes the field's **validation constraints** rather than only being stored, and that the request carries a **CSRF token**. A permission alone answers none of those, and an in-place save that trusts the field name it is given is a way to write fields the form would not have shown. Verify each before granting the permission on a site where field-level access matters.

---

- Fix a typo without opening the form.
- Correct a heading on the page.
- Update a phone number in place.
- Change a date without the node form.
- Reduce friction for small corrections.
- Edit a field from the rendered page.
- Replace core's removed Quick Edit.
- Let editors fix errors quickly.
- Correct a caption inline.
- Update an opening time in place.
- Reduce clicks for minor edits.
- Fix a price on a product page.
- Edit a summary inline.
- Correct a name on a profile.
- Update a status field in place.
- Fix a link label quickly.
- Support a fast correction workflow.
- Edit a short text field inline.
