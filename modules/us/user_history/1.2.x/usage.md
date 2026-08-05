<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
User history records changes to user accounts — role grants, status changes, field edits — as `user_history` entities, giving the audit trail core does not keep.

---

Drupal keeps no history of user account changes. Who granted an administrator role, when an account was blocked, whether an email address was altered — none of it is recorded, which is a problem the moment an organisation has a compliance obligation or needs to investigate an incident. This module adds the record: a `user_history` entity per change, with routes for batch initialisation (`/user_history/initialise`) and batch update (`/user_history/update`) so an existing site can be given a baseline rather than starting empty. Permissions follow the entity pattern, with `administer user_history entities` marked `restrict access: true`. Dependencies are core `user` alone, and the range is a wide `^8.8 || ^9 || ^10 || ^11`. Two things belong in planning. The table grows with account activity and has no automatic retention, so a policy is needed — particularly since these records are themselves personal data. And the audit trail is only as trustworthy as the permissions on it: whoever can delete `user_history` entities can remove the evidence, which is worth checking when granting the entity permissions.

---

- Record who granted an administrator role.
- Audit account blocking and unblocking.
- Track email address changes.
- Investigate a security incident.
- Meet a compliance requirement for account auditing.
- Baseline history for an existing site.
- Show an account's change history.
- Detect unexpected role grants.
- Evidence account management for an auditor.
- Track changes made by administrators.
- Record status changes over time.
- Support an access review.
- Identify dormant accounts by last change.
- Report on role assignment history.
- Provide evidence after a suspected compromise.
- Track user field edits.
- Support an ISO control on access management.
- Review changes made during onboarding.
