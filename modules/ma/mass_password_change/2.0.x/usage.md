<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Mass Password Change resets or changes passwords for many accounts at once, from the people administration screen.

---

This is an incident-response tool. After a credential breach — a leaked database, a compromised administrator account, a discovered backdoor — the correct action is to invalidate every password, and doing that one account at a time is not an option on a site with thousands of users. It also covers the planned cases: a migration from a system whose password hashes cannot be carried over, a policy change requiring everyone to re-set, the decommissioning of a shared account. Both routes require **`administer users`**, which is the appropriate gate and worth stating plainly — this is among the most destructive capabilities a site can expose, since a mass reset locks out every user simultaneously and cannot be undone. Version **2.0.0** on core `^10.4 || ^11.1`. Three things to plan before running it, because the failure mode is a support queue rather than a technical error. **Notification**: decide whether affected users are emailed a reset link or simply find their password no longer works, and confirm the site's mail actually delivers at that volume before rather than after. **Scope**: a reset that includes service accounts, API users or the site's own administrator can lock out the operator along with the attacker. And **sessions**: changing a password does not necessarily terminate existing sessions, so if the concern is an active intruder, session invalidation is a separate step that has to be taken deliberately.

---

- Reset all passwords after a breach.
- Invalidate credentials after a leak.
- Force a site-wide password change.
- Reset passwords after a migration.
- Apply a new password policy.
- Respond to a compromised account.
- Reset a group of users' passwords.
- Decommission shared credentials.
- Handle a security incident.
- Force re-authentication site-wide.
- Reset passwords for imported accounts.
- Apply a regulator's remediation requirement.
- Clear weak legacy passwords.
- Reset test accounts in bulk.
- Handle a leaked database dump.
- Enforce a periodic reset policy.
- Lock out an intruder.
- Reset after a phishing campaign.
