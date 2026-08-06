<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simplenews Resend (simplenews_resend) — agent index

Allows an already-sent **Simplenews** issue to be sent again, to the same or a different list.
Requires `simplenews`. Version **2.0.0**. Core requirement `^8 || ^9 || ^10 || ^11`.

**Three ordinary situations Simplenews leaves unhandled** (its send-once default being otherwise
correct):
- **a correction** — the issue went out with the wrong date on the event;
- **a late addition** — subscribers who joined after the send;
- **a partial failure** — the queue stalled at four thousand of nine thousand and nobody knows which
  half received it.

The workarounds are all bad: duplicating loses the association with the original; editing and
re-queueing risks **sending twice to everyone**; doing nothing leaves the correction unsent.

**A resend is a bulk send, and these recipients have already had one email. Three things to get
right:**
1. **Know who is being sent to** — same list, only new subscribers, or only failures. "Resend"
   without that distinction means **everyone gets it twice**, which for a correction is the outcome
   you were avoiding.
2. **Say it is a correction in the subject.** A duplicate-looking newsletter is **deleted unread**,
   and the correction goes unmade.
3. **Honour unsubscribes against the current list**, not the one captured at the original send — or
   the resend reaches people who have since opted out, turning a correction into a complaint.
