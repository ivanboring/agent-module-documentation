<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views kanban renders a view as a drag-and-drop kanban board: rows become cards, a chosen status field becomes the columns, and dragging a card between columns writes the new status back to the entity.

---

The module is a Views **style plugin** — pick "Kanban" as a display's format and configure which field holds the status, optionally a history field to append changes to, an assign field, and whether moving a card sends email or notifications. `templates/views-view-kanban.html.twig` renders the board and `views-email-kanban.html.twig` the notification mail; `css/kanban.css` styles it, and a `views_kanban_demo` submodule ships an example. Status values are read from the field's allowed values, a workflow's states, or a referenced vocabulary, so the columns follow whatever the site already models. Drag-and-drop writes through a controller route, `/views-kanban/update-state/{view_id}/{display_id}/{entity_id}/{state_value}`, and it is that route which needs attention before this module goes near a production site: it is gated by `access content` alone — no CSRF token, no entity access check — and this campaign confirmed by experiment that an unauthenticated request changes the field. The local security notes record the transcript. Core requirement is a forward-looking `^9 || ^10 || ^11 || ^12`.

---

- Show a task list as a kanban board.
- Drag a card between status columns.
- Build a simple ticket board on Drupal.
- Visualise editorial workflow states.
- Show content moderation states as columns.
- Track applications through stages.
- Append a change history when status moves.
- Notify an assignee when a card moves.
- Email a card's owner on a status change.
- Board any entity type with a status field.
- Use a taxonomy vocabulary as columns.
- Use a workflow's states as columns.
- Theme the board with a Twig override.
- Filter the board with Views filters.
- Show a per-user board via a contextual filter.
- Give a small team a project board.
- Replace a spreadsheet-based status tracker.
- Learn the setup from the demo submodule.
