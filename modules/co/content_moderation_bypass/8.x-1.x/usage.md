<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Content Moderation Bypass adds a dynamically generated permission, per workflow, that lets its holder move content to any moderation state regardless of the transitions the workflow defines.

---

Core Content Moderation enforces a state machine: from Draft you may go to Review, from Review to Published, and the allowed moves are permissions. That rigidity is the point — it is what makes moderation mean something. But it also gets in the way of exactly the people who should be trusted around it: a site administrator fixing a stuck item, a migration that needs to land content directly in Published, a maintenance script correcting a bad state. Without an escape hatch, the only route is to grant every individual transition permission, which is broader and clumsier than the need.

This module provides the escape hatch as a first-class permission. For each workflow it generates a `bypass {workflow} transition restrictions` permission (via a `transitionPermissions()` callback and a container alter), and a holder of that permission can set content to any state in that workflow directly, ignoring the transition graph.

That is a powerful permission and should be treated like one. It does not bypass *access* — you still need to be able to edit the content — but it does bypass the workflow's integrity, which is usually the whole reason the workflow exists. Grant it to a narrow administrative role, per workflow rather than globally where the design allows, and not to general editors. Its value is precisely that it is separable: you can hand someone the ability to override transitions without also handing them unrelated administrative power.

---

- Move content to any moderation state.
- Fix a stuck moderation item.
- Land migrated content directly in Published.
- Correct a bad moderation state.
- Override the transition graph for admins.
- Avoid granting every transition permission.
- Get a first-class bypass permission per workflow.
- Grant override to a narrow admin role.
- Keep the bypass off general editors.
- Separate transition-override from other admin power.
- Set state without following the workflow.
- Support a maintenance or migration script.
- Handle an exceptional editorial action.
- Restrict bypass per workflow where possible.
- Audit who holds the bypass permission.
- Keep the workflow strict for everyone else.
- Publish directly when policy allows.
- Reset content to Draft administratively.
- Recognise it does not bypass edit access.
- Treat the permission as high-privilege.