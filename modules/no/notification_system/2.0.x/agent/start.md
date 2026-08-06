<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Notification System (notification_system) — agent index

Pluggable notification framework: provider plugin type, `notification_group` config entity,
current-user block in `simple` or `bundled` display, AJAX or inline.
Version **2.0.0-rc1**. Core `^10 || ^11`. Depends on `user`. No permissions of its own.

Routes — all `_permission: 'access content'` except the last:
`/notification-system/example` (debug table), `/notification-system/get-notifications/{display_mode}`,
`/notification-system/read/{providerId}/{notificationId}`,
`/admin/structure/notification-group/mapping` (`administer site configuration`).

Extend here: implement `NotificationProviderInterface` (or extend
`NotificationProviderPluginBase`); add `ReadableNotificationInterface` for dismissable items.
Model is `model/Notification` — provider, id, type, title, body, link, sticky, timestamp,
priority. `Event/NewNotificationEvent` is dispatched for new items.

**Scoping is correct**: `getNotifications()` and `markAsRead()` both use `$this->currentUser()`,
so no cross-user read or write through the routes. Twig templates autoescape title/body.

Two notes: `/notification-system/example` is a debug page left routable in production — do not
link to it. `/notification-system/read/…` mutates state on a plain **GET with no CSRF token**, so
a third-party page can mark a logged-in visitor's notification read; don't hang anything
consequential on that transition.

Templates: `notification-block.html.twig`, `notification-group.html.twig`,
`notification-item.html.twig`.