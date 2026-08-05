<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
User List Permission adds an `access people list` permission, so someone can see the site's user list without being granted `administer users`.

---

This is a least-privilege fix for a specific and irritating coupling in core. Viewing `/admin/people` requires **`administer users`**, and that permission also carries the ability to edit any account, change email addresses and passwords, block and cancel users, and assign roles. So a community manager who needs to look up who registered last week, a support agent who needs to find an account by email, or a reporting user who needs a count, all have to be given the ability to take over any account on the site — or be given nothing. There is no middle setting in core, and the usual workaround is a custom view with its own access, which duplicates the list and drifts from it. This module supplies the missing permission and marks it **`restrict access: true`**, which is the right call and worth understanding rather than treating as excessive: a user list is a list of every account, and depending on the site's fields that means names, email addresses, last-login times and roles — a valuable target for anyone preparing a phishing campaign, and personal data under GDPR regardless. Version **2.2.0**, depending on core `user`, and note the core requirement **`>=11.1`** — Drupal 11.1 or later only, with no upper bound — plus a declared `php: 8.3`, both tighter than most modules and both worth checking before planning around it.

---

- Let support staff view the user list.
- Grant read-only access to /admin/people.
- Avoid granting administer users.
- Apply least privilege to a support role.
- Let a community manager find an account.
- Give reporting access to user data.
- Separate viewing from editing users.
- Reduce the number of full administrators.
- Support an audit of user accounts.
- Let a moderator look up a registrant.
- Avoid duplicating the people view.
- Grant account lookup to a helpdesk.
- Reduce privilege creep.
- Support a compliance review.
- Give a manager visibility without control.
- Meet a separation-of-duties requirement.
- Let a role count registrations.
- Restrict user editing to fewer people.
