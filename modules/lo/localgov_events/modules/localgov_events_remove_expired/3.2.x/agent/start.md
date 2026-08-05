<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LocalGov Events remove expired (localgov_events_remove_expired) — agent index

Cron-driven clean-up of finished events for
[localgov_events](../../../../3.2.x/agent/start.md). One settings form, one cron hook.

Key facts:
- Route `localgov_events_remove_expired.form` — `/admin/config/content/expired-events`
  (`ExpiredEventSettingsForm`), permission **`administer expired events`**
  (`restrict access: TRUE`).
- Config `localgov_events_remove_expired.settings`:

  | Key | Default | Meaning |
  |---|---|---|
  | `action` | **`none`** | `none` \| `unpublish` \| `delete` |
  | `expire_days` | `30` | Days after the event finishes before it is treated as expired |
  | `items_per_cron` | `100` | Maximum nodes processed per cron run |

  **The default action is `none`** — installing the module does nothing until someone opts in.
- `hook_cron()` computes the cut-off as `new DrupalDateTime('now', 'UTC')` → `midnight` →
  `-{expire_days} days`, formatted `Y-m-d\TH:i:s`, and queries the database directly for expired
  `localgov_event` nodes (occurrence-aware, via `DateRecurOccurrences`).
- It first loads the `localgov_event` node type and logs an error to the
  `localgov_events_remove_expired` channel if it is missing, rather than erroring out.
- Action behaviour:
  - `delete` → `$entity->delete()` (**permanent**, no confirmation, no archive).
  - `unpublish` → if `content_moderation` is enabled **and** the node has a `moderation_state`
    field, `ContentModerationState::loadFromModeratedEntity()` is used and the node is moved to
    the **`archived`** state via
    `localgov_events_remove_expired__set_content_state(...)`; otherwise plain
    `$entity->setUnpublished()`.

Operational notes:

```bash
drush cget localgov_events_remove_expired.settings
drush cset localgov_events_remove_expired.settings action unpublish -y
drush cset localgov_events_remove_expired.settings expire_days 90 -y
drush cron
drush watchdog:show --type=localgov_events_remove_expired
```

- With `action: delete` there is **no recycle bin** — verify `expire_days` on a copy of production
  before enabling it.
- A workflow without an `archived` state will not archive cleanly; check the workflow attached to
  `localgov_event` before choosing `unpublish` on a moderated site.
- `items_per_cron` throttles the sweep: clearing a large backlog takes
  `ceil(backlog / items_per_cron)` cron runs.
