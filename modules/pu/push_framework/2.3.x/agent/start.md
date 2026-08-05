<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Push Framework (push_framework) — agent index

Receives messages via API and delivers them across **pluggable channels** (email, push, SMS, …)
through a queue. Depends on **`advancedqueue`**, core `node`, `text`, `user`. Submodule
**`eca_push_framework`** lets ECA models emit messages. Settings at
`/admin/config/system/push_framework` behind `administer site configuration`. Version **2.3.6**.
Core requirement `^10 || ^11`.

**The `advancedqueue` dependency is the significant design choice** — durable jobs with retry,
backoff and a visible job list, where core's queue API gives much less.

**What a framework buys over one-off senders:** retry, logging, rate limiting and delivery
reporting solved **once** rather than per integration.

**Three things to plan:**
1. **Queues need a runner.** Jobs sit until something processes them — decide cron vs. a dedicated
   worker. A "push notification" system that delivers on the next cron run is not one.
2. **Channel credentials** (push/SMS provider keys) → environment variables behind **Key** entities.
3. **Consent and preference.** Who agreed to receive what, on which channel, and how they stop, is
   a policy question the framework will faithfully ignore unless it is modelled.
