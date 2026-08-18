<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# VBO Workflow Transition (vbo_workflow_transition) — agent index

**Views Bulk Operations action** applying a workflow transition to selected entities.
Version **1.1.0**. Core `^10.2 || ^11 || ^12`.
Depends on `content_moderation`, `views`, `views_bulk_operations`, `workflows`.

## Operate it (there is no config page)

1. Enable the module. It exposes one VBO action, id `vbo_workflow_transition_`,
   label *"Transition content to a new workflow state"*, applicable to any entity type.
2. Edit a View that lists moderated entities and add the **Global: Views bulk operations**
   field; enable this action in that field's settings.
3. Run the View, select rows (or "select all pages"), apply the action.
4. On the confirmation page choose exactly one transition (each is a submit button,
   grouped under its workflow) and optionally enter a **Revision Log Message**.

There is no `configure` route, no permissions, no Drush, no config schema, and no plugin
types defined by this module. Action config keys set at submit: `workflow_id`,
`transition_id`, `revision_log_message`.

## Two good properties of going through moderation

Rather than writing states directly: per-entity **transition access is still checked** —
`execute()` calls `StateTransitionValidationInterface::getValidTransitions()` for each entity
and the current user, and only applies the chosen transition if it is valid for that entity,
so a bulk operation cannot do what the user could not do singly. And the transition's
**side effects still run**: each item gets a new revision (operator as revision author,
optional log message, refreshed timestamps), preserving notifications, hooks and history.

## The risk is the selection, not the action

VBO can apply to every row matching a View, including rows on pages nobody looked at. Filter
deliberately, check the count, and prefer a View that *shows* what will be affected. On a
"select all pages" submission the confirmation preview scans only the first **500** rows
(`MAX_SCAN_COUNT`) to decide which transitions to offer, but the action still processes every
matching row on submit.
