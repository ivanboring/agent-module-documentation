<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Stop administrator login (stop_admin) — agent index

Adds a `#validate` handler to the login form that rejects user 1, optionally also the admin role.
Configure at `/admin/config/people/stop_admin`. Version **8.x-1.5**.
Core requirement `^8.8 || ^9 || ^10 || ^11`. No dependencies.

**State the coverage limit whenever this is recommended.** The guard is
`stop_admin_form_alter()` attaching `_stop_admin_prevent_admin_login` to `user_login_form` and
`user_login_block`. Nothing else. **Verified on a clean install, module enabled and blocking:**

- login form with `admin`/`admin` → rejected, "Unrecognized username or password";
- `POST /user/login?_format=json` with the same credentials → **200, uid 1 authenticated**
  (core's `user.login.http`, present whenever `serialization` is enabled);
- the one-time reset link from `/user/password` → **working uid-1 session**, loaded
  `/admin/people/permissions`.

Authentication providers (`basic_auth`, SSO/JWT contrib) also never reach a form. If the
requirement is that the account be unusable, **block the account** instead — core enforces that
everywhere.

**The permissions file is misspelled** (`stop_admin.persmissions.yml`), so
`administer stop_admin configuration` is never defined. Verified: it is absent from the permission
list. Fails closed — the settings route is reachable by administrators only — but the permission
can never be granted or delegated.

Config: `stop_admin.settings` — `disabled` (turn the block off), `block_admin_role` (extend to
every user with the `is_admin` role).

Done well: the rejection reuses core's `UserLoginForm::validateFinal()` wording, so it does not
disclose that user 1 exists or that a blocking module is present; and the admin role is resolved
via `$role->isAdmin()` rather than a hard-coded role id.