<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# User View Mode (user_view_mode) — agent index

Creates a **display view mode per user role**, so profiles render according to the roles an account
holds. No dependencies. Version **8.x-1.4**. Core requirement `^10 || ^11`.

**What it replaces:** one display for all users — every field on every profile, hidden by CSS or
left empty — or a preprocess function with a chain of role checks. A view mode per role turns that
into **display configuration**: exportable, editable in the Field UI, not buried in a theme.

**Two things to think through:**
1. **Users hold several roles.** The module needs a rule for which view mode wins when an account
   is both staff and author — first match, highest weight, most specific — and **that rule is the
   whole behaviour**. Establish it before designing around it.
2. **A view mode is a display decision, not access control.** Hiding a field in one role's view
   mode does not stop it being readable through **JSON:API**, a **view**, a **search index** or a
   different view mode. Anything genuinely confidential needs **field-level access**; this is the
   wrong tool for that job.
