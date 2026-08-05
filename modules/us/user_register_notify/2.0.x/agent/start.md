<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# User Registration Notification (user_register_notify) — agent index

Emails roles and/or addresses on user **create / update / delete**. Depends on core `user` and
`token`. Core requirement `^10.3 || ^11`. **Release is 2.0.0-beta2 — beta.**
Settings at `/admin/config/people/user_register_notify/settings`, permission
`administer user_register_notify configuration`.

Key facts:
- Targets **roles or explicit addresses**; `token` is a dependency so message bodies can carry
  account details.
- **Two things to weigh before enabling:**
  1. *Volume.* On a site with open registration and any spam problem, one email per registration
     is a mailbox flood — and role targeting means everyone in that role receives it.
  2. *Privacy.* A notification naming a new account's email address distributes personal data to
     every holder of the target role. Choose the recipient list deliberately rather than picking
     the largest convenient role.
- Complements rather than replaces `user_history` (wave 65): that records account changes for
  audit; this pushes them to people at the time.
