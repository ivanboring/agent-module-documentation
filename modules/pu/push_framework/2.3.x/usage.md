<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Push Framework receives messages through an API and delivers them across pluggable channels — email, push notification, SMS, whatever a channel plugin implements — using a queue.

---

Sites that notify people accumulate a mess of one-off senders: a hook that mails on publish, a service that calls a push provider, a third thing for SMS, each with its own retry behaviour and its own idea of a template. A framework replaces that with one path — a message arrives, is queued, and each configured channel delivers its version of it — so retry, logging, rate limiting and delivery reporting are solved once rather than per integration. This module takes that approach, depending on **`advancedqueue`** for the queue, which is the right choice and the significant one: `advancedqueue` gives durable jobs with retry, backoff and a visible job list, where core's queue API gives much less. There is an `eca_push_framework` submodule so ECA models can emit messages, connecting the notification layer to the automation layer without code. Version **2.3.6** on core `^10 || ^11`. Three things to plan. **Queues need a runner**: jobs sit until something processes them, so decide whether that is cron or a dedicated worker, because a notification framework that delivers on the next cron run is not a push notification system. **Channel credentials** — provider keys for push or SMS — belong in environment variables behind Key entities. And **consent and preference** are the part frameworks make easy to skip: who has agreed to receive what, on which channel, and how they stop, is a policy question the framework will faithfully ignore unless it is modelled.

---

- Send notifications through several channels.
- Queue outgoing messages reliably.
- Retry a failed notification.
- Deliver push notifications to an app.
- Send an SMS from a workflow.
- Notify users of new content.
- Consolidate one-off notification code.
- Trigger a message from an ECA model.
- Send a message via an API call.
- Rate-limit outgoing notifications.
- Log notification delivery.
- Support a multi-channel alerting system.
- Notify subscribers of an update.
- Send a broadcast to a segment.
- Support an emergency notification flow.
- Deliver reminders on a schedule.
- Add a new channel without new plumbing.
- Report on delivery success.
