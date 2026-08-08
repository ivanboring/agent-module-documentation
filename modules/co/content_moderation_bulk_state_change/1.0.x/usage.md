<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Content Moderation Bulk State Change provides a Views bulk action to update the content-moderation state of multiple entities in one operation.

---

Content Moderation Bulk State Change adds a bulk operation for updating the moderation state of many
entities at once, on top of core Content Moderation and Workflows. Instead of transitioning each item
through its editorial states individually, an editor can select multiple entities (for example in a
content admin View) and move them to a target moderation state in a single action — useful for
publishing or archiving batches of content.

Use it where editorial teams work with content-moderation workflows and need to process content in
bulk. The important consideration is that the bulk action must respect moderation permissions and
allowed workflow transitions, so that a user cannot use it to reach states they could not reach
individually; it provides its own permissions and a settings form (`content_moderation_bulk_state_change.settings`)
to govern the action. It depends on core `workflows` and `content_moderation`.

---

- Bulk-change moderation state of many entities.
- Publish a batch of content at once.
- Archive multiple items in one action.
- Add a bulk action for moderation states.
- Select entities and move them to a state.
- Work with content-moderation workflows in bulk.
- Respect moderation permissions in the action.
- Honor allowed workflow transitions.
- Configure at content_moderation_bulk_state_change.settings.
- Provide permissions for the bulk action.
- Depend on workflows and content_moderation.
- Speed up editorial batch processing.
- Transition content admin View selections.
- Move drafts to published in bulk.
- Avoid per-item state changes.
- Govern the action via settings.
- Prevent reaching disallowed states via bulk.
- Integrate with the content admin View.
- Update moderation state for selected nodes.
- Batch editorial state changes.
