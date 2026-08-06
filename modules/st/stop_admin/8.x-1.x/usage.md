<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Stop administrator login adds a validate handler to the login form that rejects user 1 — and optionally anyone holding the admin role — so the superuser account cannot be used through the site's UI.

---

Blocking user 1 from interactive login is a recognised hardening step: the account is the one every attacker knows exists, it bypasses every access check, and on most sites nobody needs to be it. This module implements that as a `#validate` callback on `user_login_form` and `user_login_block`, returning core's own "Unrecognized username or password" wording so the rejection discloses nothing. A checkbox extends the same treatment to every user with the role flagged `is_admin`, and a `disabled` setting turns the whole thing off again if you lock yourself out.

**The control is narrower than the claim.** A form validator only sees form submissions, and Drupal authenticates by several other paths. **Verified on a clean install with the module enabled and blocking:** the login form correctly refused `admin`/`admin`, and then the same credentials logged in as uid 1 through core's `POST /user/login?_format=json` endpoint, which exists whenever `serialization` is enabled; separately, the one-time login link core mails from `/user/password` produced a working uid-1 session that could load `/admin/people/permissions`. Authentication providers such as `basic_auth` are likewise never routed through a form. The module's own help text warns that after enabling it you will be unable to log back in without Drush — in practice you can, from the login page, in two clicks.

Also note the permissions file is misspelled `stop_admin.persmissions.yml`, so `administer stop_admin configuration` is never registered. That fails closed — the settings page ends up administrator-only — but the permission cannot be granted to anyone, which quietly defeats any plan to delegate the setting. If your requirement is "the admin account must not be usable", block the account (`$user->block()`); core enforces that at every entry point.

---

- Stop user 1 logging in through the login form.
- Stop every user with the admin role logging in through the form.
- Reject superuser logins with core's generic error message.
- Keep a Drush-only escape hatch for emergency access.
- Turn the block off again from configuration.
- Satisfy an audit item about interactive superuser access.
- Discourage sharing the admin password among a team.
- Force administrators onto their own named accounts.
- Harden a site where user 1 is a shared build account.
- Reduce the value of a leaked user-1 password.
- Add a speed bump in front of credential-stuffing against `admin`.
- Pair with a password policy on named admin accounts.
- Audit whether an inherited site relies on this for real protection.
- Confirm whether `/user/login?_format=json` is routable before trusting it.
- Decide between this and simply blocking the account.
- Understand why the login form rejects a password that works elsewhere.