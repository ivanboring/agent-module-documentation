<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Simple Content Notifications sends an email when content is changed or flagged as needing review.

---

Editorial processes fail at handoffs. Something is written and waits for review; nobody is told; it sits. The fix is a notification, and the reason sites do without one is usually that the available tools — Rules, ECA, a custom module — are more machinery than the requirement deserves.

A module that does exactly this and nothing else is the right size for a small site, and its simplicity is the feature rather than a limitation.

**Three things to settle when notifications are added, and they apply to any notification module.** Volume: a notification on every change to every piece of content trains recipients to ignore it, so scope it to the transitions that matter. Delivery: mail sent during a save ties content editing to the mail server's availability, so check whether it queues — and if it does not, that a slow SMTP host will be felt as slow saves. And recipients: a notification containing content excerpts is a copy of that content leaving the site's access controls, which matters if the content is restricted.

Worth pairing with the general point that email is a poor queue. If "needs review" matters operationally, a listing of what is waiting is more reliable than a message someone may have archived.

---

- Notify a reviewer when content is ready.
- Email on a content change.
- Flag content as needing review.
- Close an editorial handoff gap.
- Avoid a full rules engine for one need.
- Scope notifications to transitions that matter.
- Avoid training recipients to ignore email.
- Check whether mail is queued.
- Avoid slow saves from a slow SMTP host.
- Consider content excerpts leaving access controls.
- Choose recipients deliberately.
- Pair notifications with a review listing.
- Audit notification volume.
- Review who receives content notifications.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
