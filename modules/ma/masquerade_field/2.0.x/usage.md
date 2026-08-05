<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Masquerade Field lets an account masquerade as a specific set of other users, listed in a field on that account, rather than as anyone on the site.

---

The `masquerade` module gives a permission to become another user, which is invaluable for support — seeing exactly what a customer sees is faster and more accurate than any description they can give — and is close to unbounded: the permission holder can become the site's administrator. That is why it is restricted, and why many organisations that need the support workflow cannot grant it. This module narrows it to a list: an account carries a field naming the users it may become, so a departmental support agent can impersonate the members of their own department and nobody else, and a delegated administrator can act for the accounts they actually administer. Version **2.0.1** on core `^10.4 || ^11`, requiring `masquerade`. The permission design is careful and worth noting: `edit masquerade field` — the one that determines who may impersonate whom — is `restrict access: true`, while `view own masquerade field` and `view any masquerade field` are separate and unrestricted, so seeing the list is not the same as setting it. Two things to establish for any impersonation feature. **Audit trail**: every masquerade should be logged with who, as whom, and when, and the log needs to be somewhere the impersonator cannot edit — an action taken while masquerading is otherwise indistinguishable from one the real user took. And **scope of the session**: what the impersonator may do while masquerading is bounded only by the target's permissions, so a list that includes any privileged account hands over that account's authority entirely.

---

- Let support impersonate their own customers.
- Limit masquerading to a department.
- Delegate impersonation without full access.
- Reproduce a user's reported problem.
- Support a specific set of accounts.
- Avoid granting site-wide masquerade.
- Let a manager act for their team.
- Debug a permissions problem as the user.
- Support a training environment.
- Delegate account administration safely.
- See what a customer sees.
- Restrict impersonation by field value.
- Support a multi-tenant helpdesk.
- Reduce the number of full administrators.
- Diagnose a user-specific display issue.
- Support an accessibility investigation.
- Let a coach act for their students.
- Apply least privilege to impersonation.
