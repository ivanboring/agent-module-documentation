<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Workflow Notifications (workflow_notifications) — agent index

Notifications on **Workflow** module state transitions, as `workflow_notify` config entities,
delivered via a queue worker. Manage at
`/admin/config/workflow/workflow/{workflow_type}/notifications`.
Version **3.0.2**. Core `^8.8 || ^9 || ^10 || ^11.2`. Depends on `workflow:workflow`.

**Access is entity access, not a flat permission** — worth citing as a good example:

```yaml
add:     _entity_create_access: 'workflow_notify'
edit:    _entity_access: 'workflow_notify.update'
delete:  _entity_access: 'workflow_notify.delete'  +  _permission: 'administer workflow'
list:    _permission: 'administer workflow'
```

Classes: `Entity/WorkflowNotification` (+ `WorkflowAbstractNotification`),
`WorkflowNotificationControlHandler`, `Form/WorkflowNotificationForm`,
`Controller/WorkflowNotificationListBuilder`, **`Plugin/QueueWorker/ScheduleMailQueue`**.

**Queued, not inline.** Mail goes on a queue and is delivered on cron, so an unreachable SMTP host
does not slow or fail the editor's save. If notifications stop arriving, check cron before
checking the mail configuration.

Submodule: **`workflow_sms_notify`** — SMS on the same transitions; depends on `sms:sms`. Separate
decision: billed per message and reaches people out of hours.