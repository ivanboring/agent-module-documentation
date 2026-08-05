<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Edit own user account permission (edit_own_user_account_permission) — agent index

Adds **`edit own user account`**, so a site can decide whether authenticated users may edit their
own profile at all. No dependencies. Version **8.x-1.1**.
Core requirement `^10.3 || ^11.0`.

**Core has no such setting** — any authenticated user may edit their own account, and the only
alternative is a custom access hook.

**Where withholding it is right:**
- accounts **provisioned from elsewhere** (LDAP, SAML IdP, CRM, student records) — profile fields
  are copies of another system's data, and edits are silently overwritten at the next sync, or
  worse, are not;
- **identity matters for authorisation** — a user who can change their **email** can redirect a
  password reset; one who can change their **display name** can impersonate a colleague anywhere
  names are shown.

**Two things to check when applying it:**
1. **Account recovery must survive.** Password reset and email change are what users need when
   something goes wrong. Establish whether they still work with the permission withheld, or the
   support queue becomes the recovery mechanism.
2. **Check every other route into the same data.** A profile field editable through a webform, a
   **JSON:API PATCH** or a custom form is not covered by a permission gating the user form.
