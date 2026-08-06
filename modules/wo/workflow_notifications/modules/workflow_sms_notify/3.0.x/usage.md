<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Workflow SMS Notification adds SMS delivery to Workflow Notifications, sending a text when a configured state transition occurs.

---

Email is the right default for editorial notifications and the wrong one for anything urgent. An approval that blocks a publication deadline, an escalation after an item has sat in review too long, an incident workflow reaching a state that needs a person now — these want a channel that reaches someone away from their desk. This submodule adds that, using the SMS Framework (`sms`) for delivery so the gateway is whatever the site has already configured.

It sits on top of `workflow_notifications`, sharing the same `workflow_notify` configuration and the same per-workflow-type management route, so an SMS notification is configured in the same place as an email one rather than in a parallel system.

Two things to be deliberate about, and they are the same two every time SMS is added to a workflow. **Cost**: messages are billed individually, so a notification attached to a frequent transition turns into a recurring bill that nobody reviews — attach SMS to escalations and approvals, not to routine state changes. **Timing**: a text arrives immediately, including at 3am. Decide who is on the recipient list and whether the transition is genuinely urgent enough to justify interrupting them.

---

- Text an approver when content needs approval.
- Escalate an overdue review by SMS.
- Notify an on-call person of an urgent state change.
- Reach an approver who is away from email.
- Add SMS alongside email on the same transition.
- Use the site's existing SMS gateway.
- Configure SMS notifications per workflow type.
- Limit SMS to high-priority transitions only.
- Unblock a publication deadline waiting on approval.
- Notify an external stakeholder by text.
- Keep SMS and email notification config in one place.
- Review the cost of an SMS notification rule.
- Decide whether a transition justifies an out-of-hours message.
- Configure the SMS gateway through the SMS Framework.
- Restrict SMS to a small recipient list.
