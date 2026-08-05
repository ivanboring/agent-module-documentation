<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# User history (user_history) — agent index

Records changes to user accounts as `user_history` entities — the audit trail core does not keep.
Depends on core `user`. Core requirement `^8.8 || ^9 || ^10 || ^11`.

| Route | Path | Permission |
|---|---|---|
| `user_history.batch_install_form` | `/user_history/initialise` | `administer user_history entities` |
| `user_history.batch_update_form` | `/user_history/update` | `administer user_history entities` |

`administer user_history entities` is `restrict access: true`; further CRUD permissions follow the
entity pattern.

Key facts:
- The **batch initialise** route matters on an existing site: without it the history starts empty
  and the first months of records mean nothing. Run it as part of adoption.
- **Two planning points:**
  1. *Retention.* The table grows with account activity and nothing prunes it. These records are
     themselves **personal data**, so a retention period is a GDPR question, not just a disk one.
  2. *Trustworthiness.* An audit trail is only as good as the permissions on it — whoever can
     delete `user_history` entities can remove the evidence. Check who holds the delete permission
     when the trail is being relied on for compliance.
- Note the routes are on **front-end paths** (`/user_history/...`), not under `/admin`, so they
  will not inherit admin-theme or admin-route behaviour.
