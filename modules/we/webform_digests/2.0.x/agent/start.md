<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Digests (webform_digests) — agent index

Periodic **summary emails** of webform submissions, instead of one email per submission.
Version **2.0.0-rc3** — a release candidate. Core requirement `^10 || ^11`.

**Why per-submission email fails at volume:** forty submissions a day is forty emails, which the
recipient stops reading by the second week — and once they stop reading, **the notification has
failed at its actual job**, which is making sure someone knows. A digest also fits how this work is
really processed: in a batch at a set time, not by interruption.

**Three things to plan:**
1. **Digests are cron work.** The schedule is only as reliable as cron, and the failure is
   **silent** — nobody notices an email that did not arrive.
2. **Personal data in an email is data leaving the site.** A digest containing submission content
   now lives in a mailbox, a backup and possibly a phone — that belongs in the privacy assessment.
   **A digest of counts and links keeps the data behind the site's access control** and is the
   better default.
3. **A digest is the wrong shape for anything urgent.** A form reporting a fault, a safeguarding
   concern or a payment failure needs immediate notification — the two patterns should **coexist**,
   not replace each other.
