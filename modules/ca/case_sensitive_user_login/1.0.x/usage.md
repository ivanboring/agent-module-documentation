<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Case Sensitive User Login provides case-sensitive login for usernames.

---

Case Sensitive User Login **makes the username entered at login match the stored username case-exactly** — it
adds a validate handler to the user login form that looks up the exact-case username and blocks login (with the
standard "unrecognized username or password" error) if the case differs. It depends on core User.

Use it where you want usernames treated as case-sensitive at login. Security notes: the module is **purely
additive/restrictive** — it layers on top of core's own login validation (it does not replace authentication or
introduce a bypass), so at worst it rejects a mismatched-case login. Two things to understand: (1) core Drupal
already enforces **case-insensitive username uniqueness** (you cannot register `Admin` if `admin` exists), so
distinct-by-case accounts don't normally exist; and (2) its extra check runs a DB query with `=`, whose matching
follows the **database collation** — under a case-insensitive collation (the common MySQL default) the check is
effectively a no-op, so don't rely on it as a security boundary without a case-sensitive collation. It has no
broad access-control role. Enable it to require case-exact login.

---

- Require case-exact usernames at login.
- Add a login-form validate handler.
- Block mismatched-case login.
- Depend on core User.
- Serve login/access.
- Harden login matching.
- BE purely additive/restrictive (no bypass, layers on core auth).
- Note core already enforces case-insensitive username uniqueness.
- Note its `=` check follows DB collation (no-op under a case-insensitive collation).
- Not be relied on without a case-sensitive collation.
- Have no broad access-control role.
- Enable it for case-exact login.
- Handle login casing.
- Validate case.
- Configure nothing (behavior).
- Restrict login.
- Handle the form.
- Check the username case.
- Reject mismatches.
- Provide case-sensitive login.
