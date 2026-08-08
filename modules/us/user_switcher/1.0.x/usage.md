<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
User Switcher allows privileged users to switch to another user account and restore their original session.

---

User Switcher lets privileged users switch into another user account (impersonate) and later restore
their original session — useful for support/debugging ("see what this user sees"). Access is gated by the
restricted `switch user accounts` permission, and switching to user 1 is blocked unless you already are user
1. It requires PHP 8.0, provides its own permissions, in the Administration package.

**Security caveats for this version (1.0.1):**
1. **The switch action is not CSRF-protected.** The route `/user-switch/{user}` responds to GET, is gated
   only by the permission, and its CSRF-token validation is **commented out** in the controller (no
   `_csrf_token` on the route either). So an attacker can CSRF a logged-in privileged victim (e.g. via
   `<img src="/user-switch/{uid}">`) to silently switch their session into another account — a login-CSRF /
   confused-deputy session change. The `/user-switch/restore` route is even declared `_access: 'TRUE'`
   (fully public) with its checks commented out (though it only pops the caller's own session stack).
2. **The permission is effectively "become almost any user."** Aside from the uid-1 guard there is no check
   preventing a switch to a *higher-privileged* account, so a holder can impersonate other administrators —
   grant `switch user accounts` **only to fully-trusted administrators** (it is correctly marked
   `restricted: true`).

If you use it, treat the permission as highly sensitive, and prefer the well-audited **Masquerade** module
(which adds CSRF protection and "can't masquerade as users with roles you lack") for production
impersonation. See the local security.md.

---

- Switch to another user account.
- Impersonate for support/debugging.
- Restore the original session.
- Gate switching by the restricted permission.
- Block switching to uid 1 (unless you are uid 1).
- KNOW the switch action lacks CSRF protection (this version).
- Understand /user-switch/{user} is a GET with no CSRF check.
- Note the CSRF validation is commented out.
- Know /user-switch/restore is _access: TRUE (public).
- Grant the permission only to fully-trusted admins.
- Understand it can impersonate other admins (no higher-priv guard).
- Treat the permission as highly sensitive.
- Prefer the Masquerade module for production.
- Require PHP 8.0.
- Configure the permission carefully.
- Avoid CSRF exposure of the switch action.
- Restore sessions.
- Impersonate users cautiously.
- Restrict impersonation.
- Use for support debugging.
