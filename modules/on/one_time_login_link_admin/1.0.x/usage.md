<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
One Time Login Link Admin puts Drush's `user:login` within reach of the admin UI: a link on the people screen generates a one-time login link for a user, or emails it to them.

---

Supporting a user who cannot log in normally means issuing a one-time link, and the usual routes are shell access (`drush uli`) or telling the user to use the password-reset form — neither of which suits a support agent working in a browser. This module adds two routes under `/admin/people/`, one generating the link for the administrator to see and one emailing it to the user, both taking the target `{user}` as a route parameter. The access controls are the part worth reading: both require **`administer users`** *and* carry **`_csrf_token: 'TRUE'`**, which is exactly right — without the token, a crafted link could make an administrator mint a login link for an attacker-chosen account simply by visiting a page. The module declares no permission of its own, deliberately reusing core's `administer users`; there is no configuration, no dependency beyond core, and the whole implementation is one controller. Core range is a wide `^8 || ^9 || ^10 || ^11`. Operationally the "generate" variant deserves a policy: it displays a working login link to whoever holds the permission, so it should be used to *send* access, not to *hold* it.

---

- Issue a one-time login link from the admin UI.
- Help a user who cannot receive password-reset mail.
- Email a login link to a user during support.
- Avoid needing shell access for `drush uli`.
- Onboard a user whose welcome email bounced.
- Let a support agent restore access.
- Generate a link for a user with a broken address.
- Test an account's experience during setup.
- Recover an account after a domain migration.
- Provide access during an email outage.
- Reduce support escalation to developers.
- Handle a locked-out administrator.
- Send access to a newly imported user.
- Verify an account works before handover.
- Keep the action gated by `administer users`.
- Protect the action against CSRF.
- Support users who cannot use the reset form.
- Give access without setting a password.
