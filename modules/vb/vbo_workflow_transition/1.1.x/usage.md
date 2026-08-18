<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
VBO Workflow Transition adds a Views Bulk Operations action that moves selected entities through a workflow transition.

---

Moderating content one item at a time is fine until there are two hundred items. A migration lands everything as draft, an editorial review approves a batch, a campaign ends and its content should all be archived — each is one decision applied many times, and doing it individually is both slow and error-prone.

This action puts the transition into Views Bulk Operations, so the selection happens through a View with all its filters, and the transition applies to what was selected. The confirmation step groups the selection by workflow and shows, per available transition, how many of the selected entities can actually make it — and only transitions the current user is allowed to run are offered.

Two properties follow from doing it through moderation rather than by writing states directly, and both matter. **Transition access is still checked per entity** — content moderation decides whether the current user may make that transition on that item, and `execute()` re-validates every entity against the chosen transition — so a bulk operation cannot do what the user could not do one at a time. And **the transition's side effects still run**: a new revision is created for each item (with the operator as revision author, an optional revision log message, and refreshed changed/revision timestamps), so notifications, hooks and revision history behave as they would normally.

The thing to be careful about is the selection, not the action. VBO can apply to every row matching a View, including rows on pages the operator never looked at. Filter deliberately, check the count before confirming, and prefer a View that shows what will be affected over one that merely finds it. For a "select all pages" submission the confirmation preview only scans the first 500 rows to discover which transitions to offer, but the action still runs against every matching row on submit.

---

- Publish two hundred drafts at once.
- Archive a campaign's content in bulk.
- Approve a batch after review.
- Transition content selected by a View filter.
- Apply a moderation transition to many items.
- Keep per-entity transition access checks.
- Preserve notifications and hooks on bulk changes.
- Create revisions for each transitioned item.
- Attach a shared revision log message to a batch transition.
- Clean up after a content migration.
- Select items with Views filters.
- Check the affected count before confirming.
- See how many selected items can make each transition.
- Avoid acting on rows nobody looked at.
- Use a View that shows what will change.
- Transition moderated entities of any editorial entity type, not just nodes.
- Handle multilingual content, operating on the latest translation-affected revision.
- Undo a bulk transition deliberately.
- Report on bulk moderation activity.
