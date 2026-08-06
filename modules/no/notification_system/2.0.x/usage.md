<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Notification System is a framework rather than a feature: it defines what a notification is, a plugin type for producing them, groups for organising them, and a block that renders the current user's unread items.

---

The abstraction is the value. `NotificationProviderPluginManager` collects providers, each of which knows how to list notifications for an account and — if it implements `ReadableNotificationInterface` — how to mark one read. A `Notification` model carries provider, id, type, title, body, link, sticky flag, timestamp and priority. `notification_group` config entities let providers be mapped into named, described groups, and a mapping form at `/admin/structure/notification-group/mapping` wires the two together. Delivery to the page is a block in one of two display modes, `simple` (a dropdown) or `bundled` (grouped), fetched over AJAX or rendered inline.

Everything a visitor-facing route touches is scoped to the current user: `getNotifications()` and `markAsRead()` both take `$this->currentUser()`, so there is no way to read or modify another account's notifications through them. Templates are ordinary Twig with autoescaping, so a provider's title and body are escaped on output.

Two things to note when building on it. `/notification-system/example` is a debug page — an unstyled table of the current user's notifications behind `access content` — that stays routable in production; there is no harm in it, but it is not something to link to. And `/notification-system/read/{providerId}/{notificationId}` changes state on a plain GET with no CSRF token, so a third-party page can cause a logged-in visitor's notification to be marked read. The impact is small and self-limited, but if you are writing a provider whose "read" transition means something more than dismissing a message, do not rely on this route for it.

---

- Build a notification provider for a custom event source.
- Show a user their unread notifications in a dropdown.
- Group notifications by category in a bundled display.
- Mark a notification read from the front end.
- Keep a sticky notification that cannot be dismissed.
- Prioritise notifications so urgent items sort first.
- Attach a link to a notification.
- Aggregate notifications from several providers in one UI.
- Map providers into named notification groups.
- Describe a group with formatted text for users.
- Render notifications inline instead of over AJAX.
- Show already-read notifications on request.
- React to a new notification through the dispatched event.
- Replace a bespoke "you have messages" block.
- Give each module its own notification provider plugin.
- Inspect the current user's notifications while developing.
- Theme notification items with a Twig template.