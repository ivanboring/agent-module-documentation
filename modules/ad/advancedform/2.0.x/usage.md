<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Advanced Form allows conditionally hiding admin UI features on forms.

---

Advanced Form lets you conditionally hide admin UI features on forms — decluttering complex admin/edit
forms by hiding elements (fields, options, sections) based on configured conditions, so editors see a
simpler UI. It is configured at `advancedform.settings_form` and provides its own permissions.

Use it to simplify admin forms. **Important: hiding a UI element is NOT access control.** Elements hidden by
this module are still present in the form/route — a user who can reach the form can still submit the hidden
fields (via the raw request), and the underlying data/permissions are unchanged. So do **not** rely on it to
prevent access to a setting or field — use real permissions/field access for that; use this only for
UI tidiness. It has no access-control role. Configure which features are hidden and under what conditions.

---

- Conditionally hide admin UI features.
- Declutter complex admin forms.
- Hide fields/options/sections.
- Simplify the editor UI.
- Configure at advancedform.settings_form.
- Provide its own permissions.
- KNOW hiding UI is NOT access control.
- Understand hidden fields are still submittable.
- Not rely on it to restrict access.
- Use real permissions/field access for security.
- Use it only for UI tidiness.
- Have no access-control role.
- Configure hide conditions.
- Tidy admin forms.
- Hide UI elements.
- Simplify forms.
- Configure the hiding.
- Declutter forms.
- Hide form features.
- Improve form UI.
