<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Dynamic Queues (dynamic_queues) — agent index

**Splits Drupal queue items into auto-named, capacity-limited sub-queues with an inspection dashboard.**

- **Version:** 1.0.x
- **Core:** `^8 || ^9 ||  ^10`
- **Configure:** `/admin/dynamic-queues/config` (`dynamic_queues.settings_form`, `access administration pages`) — sets `max_queue_limit`.
- **Routes:** `dynamic_queues.queue_lists` (`admin/dynamic-queues/lists`) dashboard controller; `dynamic_queues.settings_form` admin config.
- **Plugins:** QueueWorker `DynamicQueues` + derivative reporting queue lengths.
- **Key API:** `DynamicQueueController::loadDatatoDynamicQueues($type,$data)` to enqueue; `::getQueueLength()` / `::getQueueLists()` to inspect.

**Security:** The config route is admin-gated, but the dashboard route `dynamic_queues.queue_lists` uses `_access: 'TRUE'` — reachable anonymously — and it `unserialize()`s stored queue `data` without `allowed_classes` while rendering node titles and email recipients. Treat the dashboard as an unauthenticated information-disclosure surface.

See [configure/settings.md](configure/settings.md).