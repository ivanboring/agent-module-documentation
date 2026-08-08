<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Feedback — agent index

Lets users **report feedback on site content** (comments/reports on pages, reviewable by owners). Config at
`content_feedback.settings`; provides permissions. Version **2.0.0**. Core `^9||^10||^11`.

**Security:** feedback is **user input** — sanitize when displaying (stored-XSS), guard against spam (flood/
CAPTCHA if anonymous), may contain PII; gate who views it. No content-access role beyond permission.
