The moderation submodule (experimental) lets a subscriber site import incoming Content Hub content directly into a chosen Content Moderation workflow state instead of always publishing it.

---

It adds an "Acquia Content Hub: Import Moderation State" selector to each workflow's edit form
(`workflow_edit_form`), letting you map, per workflow, the moderation state that imported
content should land in (e.g. force everything from publishers into `draft` for local review).
The choice is stored in `acquia_contenthub_moderation.settings` under
`workflows.<workflow>.moderation_state`. During import it registers a `pre_entity_save`
subscriber (`create_moderated_forward_revision.pre_entity_save`) that creates a moderated
forward revision in the configured state so subscriber editors keep editorial control rather
than having publisher content go straight live. It requires `acquia_contenthub_subscriber` and
core `content_moderation`, is marked experimental, and has no permissions or Drush of its own.

---

- Import syndicated content into a "draft" state for local editorial review.
- Prevent publisher content from going live automatically on a subscriber.
- Map a specific import moderation state per workflow.
- Force incoming content into an "needs review" state before publishing.
- Keep editorial control on delivery sites in a syndication fleet.
- Create moderated forward revisions for imported entities.
- Route different workflows to different import states.
- Land imported content in a custom workflow state (e.g. "syndicated").
- Configure the import state from the standard workflow edit form.
- Store the mapping in config for deployment across environments.
- Combine with the subscriber module's import queue.
- Support governance requirements that mandate review of external content.
- Avoid publishing unreviewed content pulled from other origins.
- Let moderators approve syndicated updates on their own schedule.
- Apply per-workflow policies for content moderation of imports.
