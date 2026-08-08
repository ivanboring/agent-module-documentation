<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Changelog records an entity changelog for CUD actions (create, update, delete).

---

Entity Changelog records a changelog of entity CUD operations — logging create, update and delete
actions on entities so administrators have an audit trail of what changed, when and by whom. It depends on
core Views (for displaying the log) and provides its own permissions, in the Custom package.

Use it to keep an audit trail of entity changes. It is an administration/audit feature; the changelog can
contain sensitive detail about content and who edited it, so gate access to the log with its permissions
(the audit log should be visible only to trusted admins). It has no access-control role beyond its
permission. Configure which entities are logged.

---

- Record an entity changelog.
- Log create/update/delete actions.
- Provide an audit trail.
- Depend on core Views.
- Provide its own permissions.
- Track what changed and by whom.
- Gate access to the log.
- Keep the audit log admin-only.
- Have no access-control role beyond permission.
- Configure which entities are logged.
- Audit entity changes.
- Log CUD operations.
- Track edits.
- Configure the changelog.
- Record changes.
- Provide change history.
- Log entity actions.
- Audit content changes.
- Restrict the log.
- Track entity CUD.
