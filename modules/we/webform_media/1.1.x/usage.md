<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform media adds a **media source** for webforms, so a form becomes a media entity that editors can embed into body content through the ordinary media library rather than by placing a block or writing a token.

---

Getting a webform into a page has always been awkward: place the form's block and constrain its visibility, drop a `[webform:...]` token, or add a webform reference field to the content type. Each works, and each puts the decision somewhere other than where the editor is writing. Making the form a *media* entity puts it in the media library alongside images and video, so it is embedded the same way as anything else — chosen in CKEditor's media dialog, rendered through a media view mode, reusable across pages and countable through media usage tracking. The module provides the media source plugin in `src/Plugin`, a form in `src/Form`, and `config/schema`; there are no routes or permissions of its own, because access is whatever Media and Webform already enforce. The requirements are the tightest of any module in this wave and worth checking before proposing it: **PHP >= 8.3**, core `^10.5 || ^11.2`, and Webform **`^6.2@beta`** — a beta constraint, so composer will pull a beta release of Webform to satisfy it.

---

- Embed a webform into body content from the media library.
- Let editors place a form without touching block layout.
- Reuse one form across many pages.
- Insert a form through CKEditor's media dialog.
- Render a form through a media view mode.
- Track where a form is embedded via media usage.
- Avoid webform tokens in content.
- Give forms the same workflow as other media.
- Apply media access rules to forms.
- Place a contact form mid-article.
- Standardise how forms enter content.
- Reduce block visibility rules.
- Let editors preview an embedded form.
- Manage forms alongside images and video.
- Support a component-based editing workflow.
- Embed a survey in a landing page.
- Keep form placement decisions with the content.
- Reuse a signup form across a campaign.
