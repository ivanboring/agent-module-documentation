<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
User Registration Notification emails chosen roles or addresses when a user account is created, updated or deleted — so somebody knows when a new registration arrives without watching the People screen.

---

Sites that allow self-registration usually need a human in the loop: to approve the account, to spot a spam wave, or simply to welcome a new member. Drupal notifies the *user* about their own account and tells nobody else. This module fills that in, with a settings form at `/admin/config/people/user_register_notify/settings` behind its own `administer user_register_notify configuration` permission, notifications targetable at roles or explicit addresses, and `token` as a dependency so message bodies can include the account's details. Requirements are core `user`, `token`, and core `^10.3 || ^11`; the release is **2.0.0-beta2**. Two things to weigh. Notification volume is the practical one — on a site with open registration and a spam problem, one email per registration is a mailbox flood, and role-based targeting means everyone in that role gets it. And the privacy one: a notification naming a new account's email address distributes personal data to everyone holding the target role, so the recipient list is worth being deliberate about rather than picking the largest convenient role.

---

- Notify administrators of new registrations.
- Alert a moderator to approve an account.
- Email a team when an account is deleted.
- Watch for a spam registration wave.
- Notify a membership secretary of sign-ups.
- Include account details via tokens.
- Target notifications at a role.
- Send to an explicit address list.
- Track account updates.
- Support an approval workflow.
- Welcome new members promptly.
- Detect unexpected account changes.
- Notify support of a deleted account.
- Keep an audit-adjacent record by email.
- Alert on privileged account creation.
- Support a moderated community.
- Reduce time to approve registrations.
- Notify several teams at once.
