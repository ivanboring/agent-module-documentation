<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Edit own user account permission adds an `edit own user account` permission, so a site can decide whether authenticated users may change their own profile at all.

---

Drupal has no such setting: any authenticated user may edit their own account, and the only way to stop them is a custom access hook. That is right for most sites and wrong for a specific and not-unusual class of them. Where accounts are **provisioned from elsewhere** — an LDAP directory, a SAML identity provider, a CRM, a student records system — the profile fields are copies of another system's data, and letting a user edit them creates a divergence that is silently overwritten at the next sync, or worse, is not. Where **identity matters for authorisation**, a user who can change their own email address can redirect a password reset, and a user who can change their display name can impersonate a colleague in any interface that shows names. And on sites where support staff maintain accounts deliberately, self-editing produces inconsistent data nobody asked for. This module makes it a permission, version **8.x-1.1** on core `^10.3 || ^11.0`, with no dependencies. Two things to check when applying it. **Revoking it must not lock out account recovery**: password reset and email change are the paths users need when something goes wrong, so establish whether those still work with the permission withheld, or the support queue becomes the recovery mechanism. And **check every other route into the same data** — a profile field editable through a webform, a JSON:API PATCH or a custom form is not covered by a permission that gates the user form.

---

- Stop users editing directory-provisioned profiles.
- Prevent self-service email changes.
- Keep profile data in step with an LDAP source.
- Prevent display-name impersonation.
- Lock accounts synced from a CRM.
- Enforce administrator-maintained profiles.
- Prevent divergence from an identity provider.
- Restrict profile edits on an intranet.
- Keep student records authoritative.
- Prevent password-reset redirection.
- Support a provisioned-accounts model.
- Apply least privilege to self-service.
- Keep staff profiles consistent.
- Prevent changes to synced fields.
- Support a compliance requirement.
- Restrict edits on a managed site.
- Enforce a single source of truth for identity.
- Reduce inconsistent profile data.
