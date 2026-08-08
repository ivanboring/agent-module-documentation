<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Content Feedback allows users to report feedback on site content, collecting user-submitted feedback.

---

Content Feedback allows users to report feedback on site content — submitting comments/reports about a
page (helpful/not, issues, suggestions) that site owners can review. It is configured at
`content_feedback.settings` and provides its own permissions. This gives a channel for reader feedback on
content quality.

Use it to collect content feedback from users. The security-relevant point: feedback is **user-submitted
input**, so it is subject to the usual concerns — sanitize/escape it when displaying to admins (avoid stored
XSS), consider spam (public feedback can be abused — pair with flood control/CAPTCHA if anonymous), and be
mindful that feedback may contain personal data. Gate who can view the collected feedback with its
permissions. It has no content-access role beyond its permission. Configure the feedback collection.

---

- Let users report content feedback.
- Collect feedback on pages.
- Gather helpful/not reports.
- Configure at content_feedback.settings.
- Provide its own permissions.
- Sanitize feedback when displaying.
- Avoid stored XSS from feedback.
- Guard against feedback spam.
- Pair anonymous feedback with flood control.
- Gate who views feedback.
- Handle feedback as user input.
- Have no content-access role beyond permission.
- Review reader feedback.
- Configure feedback collection.
- Collect user reports.
- Handle content feedback.
- Escape submitted feedback.
- Restrict feedback viewing.
- Gather feedback.
- Report on content.
