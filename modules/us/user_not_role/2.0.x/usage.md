<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
User not role supplies a condition plugin that matches when a user does **not** have a given role.

---

Drupal's condition system underpins block visibility, and its role condition can only express the positive: show this block to users who have role X. The negative — show this to everyone who is *not* an editor, hide this from subscribers, offer this upgrade prompt to people without the premium role — has no expression, and the workarounds are all unpleasant. Listing every other role means enumerating them and remembering to update the list when a role is added, which nobody does. A custom condition plugin is code for a logical negation. Making the block "visible to authenticated" and hiding it with CSS is not a condition at all. A negated condition closes it, and the cases are common on any site with membership tiers, upgrade paths or role-based messaging. Version **2.0.1**, and note the core requirement **`^11.3 || ^12`** — Drupal 11.3 or later only, reaching into a major that does not exist yet, which is unusually narrow for a module this small. Two things worth attaching. **A condition is visibility, not access**: a block hidden by a condition is not rendered, which is genuinely not sent to the browser — but the content it would have shown is still reachable wherever else it lives, so this controls presentation and never confidentiality. And **negation interacts with the "anonymous" case**: an anonymous visitor has no roles beyond `anonymous`, so "does not have role X" is true for them, which is usually intended and occasionally not — worth checking against what the condition is meant to express.

---

- Show a block to users without a role.
- Hide an upgrade prompt from members.
- Show a subscription offer to non-subscribers.
- Hide editor tools from non-editors.
- Show onboarding to users without a role.
- Target messaging by role absence.
- Avoid listing every other role.
- Show a trial banner to non-premium users.
- Hide a members-only notice from members.
- Support a membership upgrade path.
- Show a signup prompt selectively.
- Hide staff content from staff.
- Express a negative role condition.
- Support tiered content messaging.
- Show a prompt to unverified users.
- Hide a block from a specific group.
- Support role-based block visibility logic.
- Show content to everyone but one role.
