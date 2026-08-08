<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Abuse provides the ability for users to add complaints (abuse reports) about any content entity.

---

Entity Abuse lets users report/complain about content entities — submitting an abuse report against
any content entity, so a site can collect flags about problematic content for moderators to review. It
depends on core User and Filter, is configured at `entity_abuse.settings`, and provides its own
permissions.

Use it to give users a way to report inappropriate content and give moderators a queue to act on. The
security-relevant points: the report content is **user input** (sanitize/escape it on display, especially
if anonymous users can submit); allowing "any user" (potentially anonymous) to submit makes it a possible
**spam/abuse vector for the reporting itself** — pair it with CAPTCHA/flood control and gate who can
submit and who can view reports via its permissions. Reports may also name/accuse users, so handle that
data with care. Configure who can report and review.

---

- Let users report abusive content.
- Submit complaints about entities.
- Collect abuse reports.
- Give moderators a review queue.
- Depend on core User and Filter.
- Configure at entity_abuse.settings.
- Provide its own permissions.
- Sanitize report content on display.
- Gate who can submit reports.
- Pair with CAPTCHA/flood control.
- Mind spam of the reporting itself.
- Handle accusations carefully.
- Gate who views reports.
- Report inappropriate content.
- Flag problematic entities.
- Treat report text as user input.
- Moderate reported content.
- Restrict report access.
- Collect content complaints.
- Manage abuse reports.
