<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Digests sends periodic summary emails of webform submissions instead of one email per submission.

---

Webform's default handler emails on every submission, which is right for a low-volume contact form and wrong the moment volume rises. A form receiving forty submissions a day produces forty emails, which a recipient stops reading by the second week — and once they stop reading, the notification has failed at its actual job, which is making sure someone knows. A daily or weekly digest inverts that: one email, a summary of what arrived, a link to the detail. It also fits how people actually process this kind of work, in a batch at a set time rather than by interruption. Version **2.0.0-rc3** — a release candidate — on core `^10 || ^11`. Three things to plan. **Digests are cron work**, so the schedule is only as reliable as cron: a daily digest on a site whose cron runs irregularly arrives irregularly, and the failure is silent — nobody notices an email that did not arrive. **Personal data in an email is data leaving the site**, so a digest containing submission content is now in a mailbox, a backup and possibly a phone, which belongs in the privacy assessment; a digest containing only counts and links keeps the data behind the site's access control and is the better default. And **a digest is the wrong shape for anything urgent**: a form that reports a fault, a safeguarding concern or a payment failure needs immediate notification, so the two patterns should coexist rather than one replacing the other.

---

- Replace per-submission emails with a digest.
- Send a daily summary of enquiries.
- Reduce notification email volume.
- Summarise weekly form submissions.
- Stop a busy form flooding an inbox.
- Send a digest to a team address.
- Batch submission review.
- Improve response rates to notifications.
- Send a summary with links to detail.
- Reduce noise from a high-volume form.
- Support a scheduled review process.
- Summarise applications received.
- Send a digest of registrations.
- Reduce inbox pressure on staff.
- Report submission counts periodically.
- Support a weekly triage workflow.
- Summarise feedback submissions.
- Keep submission data behind access control.
