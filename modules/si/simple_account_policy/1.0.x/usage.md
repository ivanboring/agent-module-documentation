<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Account policy applies the basic account rules a security baseline asks for — password expiry, blocking inactive accounts, forced password change — without the configuration surface of the full Password Policy stack.

---

Security questionnaires and IT policies ask the same handful of questions: do passwords expire, are dormant accounts disabled, is a password change forced on first login. Drupal core answers none of them, and the established contrib answer is Password Policy with its constraint plugins — comprehensive, and more machinery than a site needs when the requirement is three rules. This module takes the lighter path: `src/EventSubscriber` enforces the policies on request, `src/Event` lets other code react, and administrative activate/block routes at `/admin/people/activate/{user}` and `/admin/people/block/{user}` allow manual overrides. The permission set is well separated and correctly marked — `administer account policy`, `account policy activate users` and `account policy block users` are all `restrict access: TRUE`, which is right, since activating an account is the ability to restore access to a disabled user. Tokens are provided in `simple_account_policy.tokens.inc` for notification messages, and translations are served from drupal.org. Requirements are core `user` and `^10.1 || ^11`. Worth planning: automatic blocking of dormant accounts will eventually catch service accounts and rarely used administrator accounts, so exemptions need thinking about before enabling it.

---

- Expire passwords after a set period.
- Block accounts that have been inactive.
- Force a password change on first login.
- Meet a security questionnaire's account requirements.
- Disable dormant staff accounts automatically.
- Reactivate a blocked account from the People screen.
- Notify users before a password expires.
- Apply a baseline policy without Password Policy.
- Restrict who may activate accounts.
- Reduce the attack surface from stale accounts.
- Satisfy an IT policy on account hygiene.
- Block an account manually with an audit trail.
- Use tokens in policy notification emails.
- Enforce periodic credential rotation.
- Support an ISO or Cyber Essentials control.
- Prompt users to change a shared password.
- Manage account lifecycle for contractors.
- Report on accounts approaching expiry.
