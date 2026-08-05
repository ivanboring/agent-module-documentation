<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
User View Mode creates a display view mode per user role, so a profile can be rendered differently depending on the roles the account holds.

---

Drupal renders a user profile through one set of display settings for all users, which stops making sense as soon as roles mean different things. A staff profile wants a job title, a department and a phone extension; a member profile wants a join date and interests; an author profile wants a biography and a photograph. Building one display that covers all three means every field on every profile, hidden by CSS or left empty, and the usual workaround is a preprocess function with a chain of role checks. A view mode per role turns that into display configuration, which is where it belongs — exportable, editable by a site builder, visible in the Field UI rather than buried in a theme. Version **8.x-1.4** on core `^10 || ^11`, no dependencies. Two things to think through. **Users hold several roles**, so the module needs a rule for which view mode wins when an account is both staff and author, and that rule — first match, highest weight, most specific — is the whole behaviour; establish it before designing around it. And **a view mode is a display decision, not an access control**: hiding a field in one role's view mode does not stop that field being readable through JSON:API, a view, a search index or a different view mode, so anything genuinely confidential needs field-level access, and this module is the wrong tool for that job.

---

- Show staff profiles differently from members.
- Add a job title to staff profiles only.
- Render an author profile with a biography.
- Avoid a preprocess function of role checks.
- Configure profile display per role.
- Show member fields to members only.
- Build a staff directory display.
- Keep profile display in configuration.
- Show a photograph for authors.
- Differentiate a volunteer profile.
- Render a customer profile compactly.
- Support several audience types.
- Show department fields for employees.
- Simplify a crowded profile display.
- Support a membership tier's display.
- Configure a speaker profile view mode.
- Show contact details per role.
- Export per-role display settings.
