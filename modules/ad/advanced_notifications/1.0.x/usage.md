<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Advanced Notifications delivers web-push notifications with campaigns and targeting.

---

Advanced Notifications sends browser (web-push) notifications and adds campaign management, role targeting and subscription handling — so a site can run push-notification campaigns to subscribed visitors, targeting by role and managing subscriptions, for engagement/re-marketing.

It exposes permissions for subscriptions and administration, including `administer web push sensitive settings` (which likely holds VAPID/push keys) — keep push keys secure (env-backed) and restrict the sensitive-settings and campaign permissions to trusted roles. Depends on core `rest`, `serialization`, and `user`; supports Drupal 10.3+, 11, and 12.

---

- Send web-push notifications.
- Manage push campaigns.
- Target by role.
- Handle subscriptions.
- Support engagement/re-marketing.
- Gate subscriptions with `access list subscriptions`.
- Gate `administer web push subscriptions`/`settings`.
- Gate `administer web push sensitive settings` (keys).
- Gate `administer web push campaigns`.
- Keep push keys secure (env-backed).
- Restrict sensitive/campaign permissions.
- Depend on core `rest`, `serialization`, `user`.
- Support Drupal 10.3+, 11, and 12.
- Run campaigns.
- Deliver to subscribers.
- Manage web push
- Configure targeting
- Handle VAPID keys
