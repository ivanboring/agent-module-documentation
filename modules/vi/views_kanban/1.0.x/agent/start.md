<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views kanban (views_kanban) — agent index

Views **style plugin** rendering a view as a drag-and-drop kanban board. Depends on core `views`.
Core requirement `^9 || ^10 || ^11 || ^12`. Submodule: `views_kanban_demo`.

> ## Do not deploy 1.0.25 on a site with untrusted traffic
>
> The drag-and-drop write route is **unauthenticated**. Confirmed by experiment on this site
> (transcript in the local `security.md`): an anonymous `curl` with no cookie and no token
> changed a published node's field value, and the module answered
> `{"success":true,"message":"Anonymous change from To do to Done"}`.
>
> ```yaml
> update_entity_kanban_state:
>   path: '/views-kanban/update-state/{view_id}/{display_id}/{entity_id}/{state_value}'
>   requirements:
>     _permission: 'access content'      # anonymous on a default site
>     entity_id: \d+
> # registered methods: GET,POST — no _csrf_token, no _entity_access
> ```
>
> `KanbanController::updateState()` calls `$entity->set($status_field, $state_value)` then
> `$entity->save()` with **no `$entity->access('update')` check anywhere in the file**. The only
> validation is that the value is in `getAllowedValues()` — a data-validity check, not an
> authorisation one. Each call can also send mail to the owner and assignees, so it doubles as an
> outbound-mail trigger.

Key facts (once patched, or on a trusted-network deployment):
- Configure as a display **format**: `status_field` supplies the columns, `history_field` gets an
  appended change log, `assign_field` and `send_email`/`send_notification` drive notifications.
- Column values come from the field's allowed values, a `state_machine`/`workflows` workflow, or
  a referenced vocabulary (`getAllowedValues()`).
- Optional integrations are null-guarded via `$container->has()`: `pwa_firebase`, `notify_widget`,
  `notifications_widget`, `field_states`. Absent modules are simply skipped.
- `$entity_type` falls back to **`'user'`** when the view's `type` filter carries no
  `entity_type` — worth knowing when debugging unexpected targets.
- Templates: `views-view-kanban.html.twig` (board), `views-email-kanban.html.twig` (mail).
