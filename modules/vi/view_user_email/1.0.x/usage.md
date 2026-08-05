<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
View User Email adds one permission that lets chosen roles see other users' email addresses — something core reserves for full user administrators.

---

Drupal treats a user's email address as private: the `mail` field is visible on your own account and to holders of `administer users`, and to nobody else. That is a sensible default and too coarse in practice, because plenty of roles legitimately need to contact members without being given the ability to edit, block or delete accounts — a membership secretary, a support agent, an events coordinator. This module supplies the missing middle. The whole implementation is `view_user_email.module` plus a permissions file declaring `access email field`, marked **`restrict access: TRUE`** — correctly, since granting it exposes personal data for every account on the site. There are no routes, no configuration and no dependencies, and the core range is a wide `^8 || ^9 || ^10 || ^11`. Two things to be clear about when recommending it: the permission is all-or-nothing, covering every user's address rather than a subset, and it is a **field access** change, so it should be verified in the contexts that matter — the profile display, Views, and any REST or JSON:API output where field access is what stands between a role and a bulk export of every address on the site.

---

- Let a membership secretary see member email addresses.
- Give support staff contact details without user admin rights.
- Show the email field on user profiles to a specific role.
- Avoid granting `administer users` just to read an address.
- Let event organisers contact registrants.
- Expose email in a Views listing to a chosen role.
- Reduce the number of full user administrators.
- Support a volunteer coordinator role.
- Give a moderator contact details for follow-up.
- Meet an operational need without over-granting.
- Show email addresses on a members directory.
- Let a sales role see registered users' emails.
- Keep account editing separate from contact access.
- Delegate outreach without delegating account control.
- Provide addresses for a mailing export to one role.
- Audit which roles can see personal data.
- Support a small team with split responsibilities.
- Replace a custom hook_entity_field_access implementation.
