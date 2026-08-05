<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Notifications Widget adds the bell icon familiar from social platforms: a dropdown listing recent activity relevant to the user, with an unread count.

---

The module logs events and renders them through a block, with `src/Services` holding the logging API other modules call — `views_kanban`, documented in wave 60, is one such caller, invoking `logNotification()` when a card moves. Configuration is split across two forms, both under `administer site configuration`: general settings at `/admin/config/system/notifications_widget` and logger settings at `/admin/config/people/notifications_widget/loggers`, the latter path hinting that which events are logged is thought of as a people-management concern. Two stylesheets cover the dropdown and its base styling, and `config/optional` alongside `config/install` means some configuration applies only when its dependencies are present. The dependency on core **`rest`** is worth noticing: the widget fetches its notifications over a REST endpoint rather than rendering them server-side, which is what allows the count to update without a page reload — but it also means REST is enabled on the site, and that any endpoint the module exposes needs the usual scrutiny about which user's notifications it will return. The project name and module name differ (`notificationswidget` versus `notifications_widget`), which matters for `drush en`. The release is **2.0.0-alpha9**, an alpha.

---

- Show a notification bell with an unread count.
- List recent activity in a dropdown.
- Notify editors of content changes.
- Log a notification from another module.
- Show updates without a page reload.
- Give users an activity feed.
- Mark notifications as read.
- Notify assignees of a task change.
- Surface workflow transitions to editors.
- Provide in-site alerts alongside email.
- Configure which events are logged.
- Place the bell as a block.
- Style the dropdown to match a theme.
- Reduce reliance on email notifications.
- Show moderation activity to reviewers.
- Integrate with a kanban board's status changes.
- Give an intranet a familiar notification pattern.
- Track what a user has already seen.
