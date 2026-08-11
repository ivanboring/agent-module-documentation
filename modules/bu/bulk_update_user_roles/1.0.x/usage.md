<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bulk Update User Roles lets administrators update roles for all users in a single click.

---

Bulk Update User Roles **adds or removes roles across all users at once** — a form that applies a chosen role
to (or removes it from) every user in a single batch operation, for mass role management. It depends on core User.

Use it for mass role changes. Be aware of a **privilege-escalation flaw** in how it is gated (recorded as a
campaign security finding): its route requires only the **`administer users`** permission, its form lists **every
role including `administrator`** (no filtering to roles the current user may assign), and its batch calls
`$user->addRole()` directly. Drupal core deliberately requires the **higher `administer permissions`** to assign
roles (core's account form hides the roles field unless the user has `administer permissions`) — precisely so
user-management staff can't make themselves site admins. This module removes that separation, so **an account with
only `administer users` can grant the `administrator` role to itself and all users → full site takeover.** Until
fixed, **do not grant `administer users` to anyone who shouldn't be a full administrator while this module is
enabled**, and prefer restricting/uninstalling it; the proper fix is to require `administer permissions` on the
route and filter the role options to assignable (non-`is_admin`) roles, mirroring core. Configure with this
caution.

---

- Bulk add/remove roles across all users.
- Apply a role in one click.
- Run a batch role update.
- Depend on core User.
- Serve mass role management.
- Update roles at scale.
- REQUIRE only 'administer users' on the route (a privilege-escalation flaw).
- OFFER every role incl. administrator + addRole() directly (bypasses core's 'administer permissions' gate).
- LET an 'administer users' account grant itself/everyone the admin role → site takeover.
- Not grant 'administer users' to non-full-admins while enabled (until fixed: require administer permissions + filter roles).
- Prefer restricting/uninstalling until fixed.
- Configure with this caution.
- Handle bulk role updates.
- Update roles.
- Configure the update.
- Add roles.
- Handle the batch.
- Remove roles.
- Restrict the gate.
- Provide bulk role updates.
