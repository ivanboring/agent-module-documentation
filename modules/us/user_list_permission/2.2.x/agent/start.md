<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# User List Permission (user_list_permission) — agent index

Adds **`access people list`** so `/admin/people` can be viewed without `administer users`.
Depends on core `user`. Version **2.2.0**.
**Core requirement `>=11.1`** — Drupal 11.1+, no upper bound. Declares **`php: 8.3`**. Both tighter
than most modules; check before planning around it.

**The coupling it fixes:** core gates `/admin/people` on **`administer users`**, which also grants
editing any account, changing emails and passwords, blocking, cancelling and assigning roles. A
support agent who needs to look up an account must therefore be able to take over any account —
or be given nothing. The usual workaround is a custom view with its own access, which duplicates
the list and drifts from it.

**`access people list` is `restrict access: true`, and that is correct, not excessive.** A user
list is a list of every account — names, email addresses, last-login times, roles, depending on
the site's fields. That is a phishing target and personal data under GDPR.
