<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ECA Flag connects the Flag module to ECA, so flagging and unflagging become events that can start an automated workflow, and flagging becomes an action a workflow can perform.

---

Flag provides the "bookmark this", "report this", "mark as read" primitive; ECA (Event–Condition–Action) provides no-code automation built on Drupal's event system. Joining them is the obvious next step and the module is exactly that bridge: `src/Event` defines the flag events ECA can react to, `src/Plugin` supplies the ECA event and action plugins, and `src/Hook` wires them in. There are no routes, permissions or configuration of its own — everything is configured in ECA's own modeller, which is where the behaviour belongs. The dependency ranges are notably wide for a bridge: ECA `^2 || ^3` and Flag `^4 || ^5`, so it spans two majors of each. PHP 8.1+ and core `^10.4 || ^11` complete the requirements. The pattern to keep in mind when building with it is loops: an action that flags something can trigger an event that flags something else, and ECA will happily follow the chain — so a model that both listens for and performs flag operations needs a condition to break the cycle.

---

- Send an email when content is flagged.
- Notify a moderator when a post is reported.
- Flag content automatically when it is published.
- Unflag items when a workflow completes.
- Start an approval process from a flag.
- Track "read" state through automation.
- Add content to a queue when bookmarked.
- Escalate after a number of reports.
- Flag stale content on a schedule.
- Clear flags when content is archived.
- Notify an author when their content is bookmarked.
- Drive a moderation workflow from flags.
- Combine flag events with other ECA conditions.
- Build a no-code reporting workflow.
- Sync a flag to an external system.
- Log flag activity through ECA.
- Flag an entity from a form submission.
- Automate a "favourites" digest.
