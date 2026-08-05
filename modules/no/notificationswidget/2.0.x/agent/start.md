<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Notifications Widget (notificationswidget) — agent index

Notification bell with dropdown and unread count. **Project `notificationswidget`, module
`notifications_widget`** — `drush en notificationswidget` fails; use the underscored name.
Depends on core `user`, `block`, **`rest`** and `system (>=8.1.0)`.
Core requirement `^8.8 || ^9 || ^10 || ^11`. **Release is 2.0.0-alpha9 — alpha.**

| Route | Path |
|---|---|
| `notifications_widget.notifications_widget_settings` | `/admin/config/system/notifications_widget` |
| `notifications_widget.notifications_widget_logger_settings` | `/admin/config/people/notifications_widget/loggers` |

Both gated by `administer site configuration`; the module declares no permission of its own.

Key facts:
- **The `rest` dependency is load-bearing**: notifications are fetched over a REST endpoint so the
  count can update without a page reload. Consequences: core REST is enabled on the site, and any
  endpoint it exposes must be checked for whose notifications it returns — a per-user feed served
  without a per-user access check is the obvious failure mode for this module shape.
- `src/Services/` exposes the logging API other modules call. `views_kanban` (wave 60) is a real
  caller — `NotificationsWidgetServiceInterface::logNotification()`.
- `config/optional` alongside `config/install`: some configuration applies only when its
  dependencies are present.
