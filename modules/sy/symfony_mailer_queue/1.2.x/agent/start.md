<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Symfony Mailer Queue (symfony_mailer_queue) — agent index

Queues Symfony Mailer emails and sends them from a cron queue worker, with configurable
retry behaviour. Requires contrib `symfony_mailer`. No routes, no permissions, no Drush;
config schema shipped.

Key facts:
- **Service decoration**: `symfony_mailer_queue.services.yml` overrides the `email_factory`
  service with `Service\EmailFactory` so emails are built as `QueueableEmail`
  (`QueueableEmailInterface`). `SymfonyMailerQueueServiceProvider` completes the wiring.
- **Email adjuster `queue_sending`** (`Plugin\EmailAdjuster\QueueSendingEmailAdjuster`) — attach
  it to a **mailer policy** to queue that policy's mail. `build()`:
  - throws `\LogicException('Attempted to queue a non-queueable email.')` if the email is not a
    `QueueableEmailInterface`;
  - if `!$email->isInQueue()`, pushes a `SymfonyMailerQueueItem` onto the queue
    (`queueFactory->get(SymfonyMailerQueueWorker::QUEUE_NAME, TRUE)`) and skips inline sending
    (`SkipMailException`).
- **Queue** name `symfony_mailer_queue`; worker
  `Plugin\QueueWorker\SymfonyMailerQueueWorker` with `cron = {"time" = 60}`.
- **Adjuster settings** (schema `symfony_mailer.email_adjuster_plugin.queue_sending`):

  | Setting | Default | Meaning |
  |---|---|---|
  | `queue_behavior` | `delayed` | `delayed` requeue, immediate requeue, or suspend the queue |
  | `requeue_delay` | `60` (seconds) | Delay before a failed item is retried |
  | `maximum_attempts` | — | Retry cap |
  | `send_wait_time` | — | Wait time applied when sending |

  The help text is explicit that **not all queue backends support delays** — Drupal's database
  queue does; for those that do not, a one-minute lease applies, and cron garbage collection
  must be configured to release items.
- **`symfony_mailer_queue.settings` is deprecated for removal** (`maximum_attempts`,
  `requeue_delay`, `send_wait_time`); the schema is kept only for migration. Configure the
  adjuster per policy instead.
- Events: `Event\EmailSendFailureEvent` and `Event\EmailSendRequeueEvent`, each carrying the
  `SymfonyMailerQueueItem` as a readonly property.
- `StaticLanguageNegotiator` (+ interface) preserves the originating language so a queued email
  renders in the right language rather than the cron run's.
- `hook_uninstall()` deletes `symfony_mailer_queue.settings` **and** strips the `queue_sending`
  adjuster from every `mailer_policy` config entity.

```bash
drush en symfony_mailer symfony_mailer_queue -y
# Attach the adjuster to a policy in the Mailer policy UI, then:
drush queue:list | grep symfony_mailer_queue
drush queue:run symfony_mailer_queue
```
