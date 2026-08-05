<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Confirm Unpublish shows a confirmation dialog when an editor unpublishes a node, so taking a page off the site is a deliberate act rather than an unnoticed checkbox.

---

Unpublishing in Drupal is a checkbox on the node form, next to Save. It is the same weight as changing a title, and the consequence is not: the page disappears from the site, from menus, from search results, and anyone holding the URL gets an access-denied. Editors do it by accident — clearing the box while tidying another field, or not noticing it was cleared by a workflow — and nobody finds out until someone reports a dead link. A confirmation dialog is the standard remedy for an action whose cost is asymmetric: cheap to confirm, expensive to undo unnoticed. This module supplies it for nodes, on core `^10.2 || ^11`, version **1.0.6**, depending only on core `node`. It sits in the same family as delete-confirmation safeguards, and the sensible companion question is whether the site should be using **content moderation** instead — a workflow with an explicit Archived state makes unpublishing a transition with its own permission and its own log entry, which is stronger than a dialog. The dialog is the right fit where full moderation is more process than the team wants.

---

- Prevent accidental unpublishing.
- Confirm before taking a page offline.
- Warn an editor about the consequence.
- Reduce accidental dead links.
- Add a safeguard to the node form.
- Protect published landing pages.
- Slow down a destructive action.
- Reduce support tickets about missing pages.
- Add a confirmation modal.
- Protect a high-traffic page.
- Make unpublishing deliberate.
- Support a cautious editorial team.
- Avoid silent removal from menus.
- Add a guard without full moderation.
- Protect campaign pages.
- Reduce editorial mistakes.
- Confirm status changes on save.
- Improve editorial safety.
