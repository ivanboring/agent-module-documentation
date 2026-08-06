<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Simplenews Resend allows a newsletter that has already been sent to be sent again, to the same list or a different one.

---

Simplenews treats an issue as sent once, which is the correct default and leaves three ordinary situations unhandled. A correction — the newsletter went out with the wrong date on the event, and the people who received it need the right one. A late addition — subscribers who joined after the send should get the issue, which matters for a welcome sequence or an archive-on-signup arrangement. And a partial failure — the mail queue stalled at four thousand of nine thousand and nobody knows which half received it. Without a resend the workarounds are all bad: duplicating the issue loses the association with the original, editing and re-queueing risks sending twice to everyone, and doing nothing leaves the correction unsent. Version **2.0.0** on `^8` through `^11`, requiring `simplenews`. **A resend is a bulk send, so the ways it goes wrong are the ways bulk sends go wrong, amplified by the fact that these recipients have already had one email.** Three things to get right. **Know who is being sent to** — the same list, only new subscribers, or only those who failed — because "resend" without that distinction means everyone gets it twice, which for a correction is the outcome you were trying to avoid. **Say it is a correction in the subject**, since a duplicate-looking newsletter is deleted unread and the correction goes unmade. And **unsubscribes must be honoured against the current list, not the one captured at the original send**, or the resend goes to people who have since opted out — which is the failure that turns a correction into a complaint.

---

- Resend a newsletter with a correction.
- Send an issue to new subscribers.
- Recover from a stalled send.
- Resend after fixing a broken link.
- Send an issue to a second list.
- Correct a wrong date in a newsletter.
- Resend to subscribers who failed.
- Send an archive issue to new members.
- Resend after a template fix.
- Send a corrected event notice.
- Resend to a segment.
- Recover a partially delivered issue.
- Send a reissue with an apology.
- Resend after a mail configuration fix.
- Send an issue to a new region's list.
- Resend a welcome newsletter.
- Correct a pricing error in an issue.
- Resend to unopened recipients.
