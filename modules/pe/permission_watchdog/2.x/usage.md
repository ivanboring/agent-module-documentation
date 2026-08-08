<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Permission Watchdog logs changes to role permissions, recording when a role's permissions are modified and by whom — a security-audit aid.

---

A silent change to a role's permissions — granting an editor an administrative capability, loosening access — is exactly the kind of change that should never go unnoticed, and Drupal does not log it by default. Permission Watchdog fills that gap: it records changes to role permissions to the log. This is a genuinely useful security-audit control, because permission changes are among the highest-impact configuration changes on a site and a compromised or careless admin changing them is a classic escalation path. The log lets you review 'who changed which role's permissions, and when' after the fact. Keep the log restricted (it reveals the site's permission structure and change history), and treat unexpected permission-change entries as an incident signal. A small, worthwhile addition to a site's security monitoring.

---

- Log role permission changes.
- See who changed a permission.
- Audit permission modifications.
- Detect an escalation change.
- Record permission grants.
- Monitor role changes.
- Restrict the log.
- Treat unexpected changes as incidents.
- Support security auditing.
- Review permission history.
- Catch a loosened permission.
- Add permission-change monitoring.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.