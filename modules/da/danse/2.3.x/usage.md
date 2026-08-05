<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DANSE — Drupal Audit Notification Subscription Event — is a framework that turns system activity into auditable events, builds notifications from them, and lets users subscribe to exactly the events they care about.

---

Most notification modules pick one source (content changes, say) and one delivery (email) and hard-wire the path between them. DANSE separates the three concerns and makes each pluggable, which is why it ships as a base module plus eight submodules covering the sources: **danse_content** for entity activity, **danse_config** for configuration changes, **danse_user** for user events, **danse_form** for form submissions, **danse_log** for log entries, **danse_generic** for arbitrary events, **danse_webhook** for outbound delivery, and **eca_danse** for driving ECA workflows from subscriptions. Users manage what they follow at `/user/{user}/subscriptions`, and administrators configure the framework at `/admin/config/system/danse` with a companion **prune** form — a telling detail, because an event-recording framework accumulates rows and needs deliberate housekeeping. The `config_devel` key in the info file lists the shipped views (`danse_events`, `danse_notifications`, `danse_user_notifications`, `danse_notification_actions`) and a notifications block, so the reporting UI comes with it. Requirements are PHP 8.1+ and core `^10.3 || ^11`; ECA and Push Framework are dev/optional integrations rather than hard dependencies. The audit dimension is worth planning for on a privacy basis: recording who did what, and notifying about it, is exactly the data a retention policy should cover — which is what the prune form is for.

---

- Notify users when content they follow changes.
- Let users subscribe to specific events.
- Audit configuration changes.
- Record who changed what and when.
- Send a webhook when an event occurs.
- Notify moderators of new submissions.
- Follow a single node for updates.
- Drive an ECA workflow from a subscription.
- Track user account events.
- Build a notifications inbox for users.
- Prune old event records on a schedule.
- Report on system activity through Views.
- Subscribe to log entries of a given severity.
- Give editors a per-entity follow button.
- Integrate notifications with push delivery.
- Notify an external system of content changes.
- Audit form submissions.
- Provide a subscription centre for users.
- Extend the framework with a custom event plugin.
