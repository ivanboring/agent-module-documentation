<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Account policy (simple_account_policy) — agent index

Basic account rules — password expiry, blocking inactive accounts, forced password change.
Depends on core `user`. Core requirement `^10.1 || ^11`.

| Route | Path | Permission (all `restrict access: TRUE`) |
|---|---|---|
| `simple_account_policy.activate` | `/admin/people/activate/{user}` | `account policy activate users` |
| `simple_account_policy.block` | `/admin/people/block/{user}` | `account policy block users` |
| settings | — | `administer account policy` |

Key facts:
- **All three permissions are correctly restricted.** Activating an account is the ability to
  restore access to a disabled user — treat it as an account-recovery capability, not a
  convenience.
- Enforcement is an **event subscriber** (`src/EventSubscriber/`) running on request;
  `src/Event/` lets other modules react to policy decisions.
- Tokens in `simple_account_policy.tokens.inc` for notification messages; translations come from
  drupal.org's localisation server.
- **Plan exemptions before enabling automatic blocking.** Dormancy rules eventually catch service
  accounts, integration users and rarely-used administrator accounts — locking out the account you
  need to fix it with is the classic failure.
- Positioning: lighter than **Password Policy**'s constraint-plugin architecture. Choose that when
  composition and per-role rules are needed, this when the requirement is a small fixed baseline.
