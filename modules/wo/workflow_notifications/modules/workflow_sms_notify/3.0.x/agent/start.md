<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Workflow SMS Notification (workflow_sms_notify) — agent index

Submodule of **workflow_notifications**. SMS on Workflow state transitions.
Version **3.0.2**. Core `^8.8 || ^9 || ^10 || ^11.2`.
Depends on `workflow:workflow`, **`sms:sms`** (SMS Framework), `workflow_notifications`.
Shares the parent's `entity.workflow_type.collection` configure route and `workflow_notify` config.

**Two operational points to raise every time.**

1. **Cost.** Messages are billed individually. Attached to a frequent transition this becomes a
   recurring bill nobody reviews. Use it for escalations and approvals, not routine transitions.
2. **Timing.** SMS arrives immediately, including at 3am. Confirm the recipient list and that the
   transition is genuinely urgent.