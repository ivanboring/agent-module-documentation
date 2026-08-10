<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DE Notifications provides the ability to subscribe to entity changes.

---

Decoupled Entity Notifications **lets users subscribe to entity changes and delivers notifications** — so a
decoupled/headless front-end can register interest in entities (via Dynamic Entity Reference) and receive
notifications when they change. It depends on core Dynamic Entity Reference, provides its own permissions, in the
Decoupled Entity Notifications package.

Use it to power entity-change notifications for a decoupled app. It is a decoupled/notifications feature.
Security/data handling: subscriptions tie **users to entities** (personal data), and notifications should only
reveal entities/fields the subscriber can **access** (ensure notifications respect entity access so a subscriber
isn't told about content they can't see); gate subscription management by its permission. It has no access-control
role beyond its permission. Configure subscriptions and delivery.

---

- Subscribe users to entity changes.
- Deliver change notifications.
- Serve decoupled front-ends.
- Depend on core Dynamic Entity Reference.
- Provide its own permissions.
- Register entity interest.
- Tie users to entities (personal data).
- Ensure notifications respect entity access.
- Not reveal content the subscriber can't access.
- Gate subscription management by permission.
- Have no access-control role beyond permission.
- Configure subscriptions and delivery.
- Handle entity notifications.
- Notify on changes.
- Configure the subscriptions.
- Subscribe to entities.
- Handle the integration.
- Deliver notifications.
- Respect entity access.
- Provide entity-change notifications.
