<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Mass Password Change (mass_password_change) — agent index

Bulk password reset/change from the people administration screen. Both routes
(`/admin/people/mass_password_change/{reset,change}_confirm`) require **`administer users`** —
the appropriate gate. Depends on core `user`. Version **2.0.0**.
Core requirement `^10.4 || ^11.1`.

**This is an incident-response tool, and among the most destructive capabilities a site can
expose**: a mass reset locks out every user simultaneously and cannot be undone.

**Three things to plan before running it — the failure mode is a support queue, not an error:**
1. **Notification.** Are affected users emailed a reset link, or do they simply find their password
   no longer works? Confirm the site's mail actually delivers **at that volume** beforehand.
2. **Scope.** A reset including service accounts, API users or the operator's own administrator
   account locks out the responder along with the attacker.
3. **Sessions.** Changing a password does not necessarily terminate existing sessions. If the
   concern is an **active** intruder, session invalidation is a separate, deliberate step.

Also covers planned cases: migration from a system whose hashes cannot be carried over, a policy
change requiring universal re-set, decommissioning a shared account.
