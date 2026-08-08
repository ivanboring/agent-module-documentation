<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config Revision adds revisioning to configuration entities, keeping a history of changes so config edits can be reviewed and reverted.

---

Content entities have revisions; configuration entities do not, so a bad config edit is hard to review or undo without config-sync tooling. Config Revision adds revisioning to config entities, keeping a change history. It is an administrative/governance tool. Because configuration can include access rules, permissions and field definitions, the revision history is itself sensitive (it records how the site's behaviour changed), so keep the feature admin-gated and treat reverting config with the same care as any config change — a revert alters live site behaviour.

---

- Revision config entities.
- Keep a config change history.
- Review a config edit.
- Revert a config change.
- Track who changed config.
- Undo a bad config edit.
- Audit configuration changes.
- Restrict config-revision access.
- Govern config changes.
- Roll back config carefully.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep setup minimal.
- Verify theme fit.
- Audit access.
- Match your use case.
- Confirm compatibility.