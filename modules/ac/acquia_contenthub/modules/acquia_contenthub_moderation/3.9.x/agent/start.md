# acquia_contenthub_moderation — agent start

**Experimental.** Lets a subscriber import Content Hub content into a chosen **Content
Moderation** state instead of publishing it outright. Requires `acquia_contenthub_subscriber`
+ `content_moderation`. No permissions/Drush.

## Configure
Adds an **"Acquia Content Hub: Import Moderation State"** select to each workflow's edit form
(`workflow_edit_form_alter`). Pick the state imported content should land in per workflow.
Stored in config `acquia_contenthub_moderation.settings` →
`workflows.<workflow_id>.moderation_state`:
```
drush cset acquia_contenthub_moderation.settings workflows.editorial.moderation_state draft
```
Default: none selected — a state must be configured per workflow for the module to act.

## Behavior
`pre_entity_save` subscriber `create_moderated_forward_revision.pre_entity_save` creates a
moderated forward revision in the configured state on import, keeping subscriber editorial
control. No separate solution docs (single config surface).
