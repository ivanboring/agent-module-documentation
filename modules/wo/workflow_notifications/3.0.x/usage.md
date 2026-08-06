<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Workflow Notifications sends configurable messages when a Workflow module state transition occurs, queued for delivery, with an optional SMS submodule.

---

Editorial workflow only works if the next person knows it is their turn. The Workflow module models the states and transitions; this module attaches notifications to them, as `workflow_notify` configuration entities managed per workflow type at `/admin/config/workflow/workflow/{workflow_type}/notifications`. Each one describes which transition it responds to and what gets sent.

Delivery goes through a queue worker (`Plugin/QueueWorker/ScheduleMailQueue`) rather than being sent inline during the save request. That matters more than it sounds: sending mail synchronously ties the editor's save to the mail server's availability, and a slow or unreachable SMTP host turns into a slow or failed content save. Queued delivery means the transition completes and the mail follows on cron.

Access is done through entity access rather than a flat permission, which is the right pattern: the add route uses `_entity_create_access: 'workflow_notify'`, edit uses `_entity_access: 'workflow_notify.update'`, and the collection uses `administer workflow` — so notification configuration inherits the same authority as the workflow it belongs to rather than introducing a parallel one.

The `workflow_sms_notify` submodule adds SMS delivery on the same transitions, depending on the `sms` framework module. Treat that as a separate decision: SMS is billed per message and reaches people outside working hours, so it suits approval escalations and not routine state changes.

---

- Email a reviewer when content enters review.
- Notify an author when their content is published.
- Tell an editor when something is sent back for changes.
- Notify a group on a specific state transition.
- Configure different messages per workflow type.
- Queue notification mail instead of sending it inline.
- Keep content saves independent of the mail server.
- Send an SMS on an approval transition.
- Escalate an overdue approval by text message.
- Manage notifications alongside the workflow they belong to.
- Delegate notification configuration through entity access.
- Add a notification without writing a hook.
- Export notification configuration with the site.
- Review which transitions currently notify someone.
- Retire a notification when a workflow changes.
- Diagnose notifications that are queued but not delivered.