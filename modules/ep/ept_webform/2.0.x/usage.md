<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Webform adds a paragraph type that embeds a webform into a page, with the Extra Paragraph Types family's shared presentation settings.

---

Placing a form inside a page is a requirement with four established answers, and this is the paragraph-shaped one. A **webform reference field** stores which form on each node, right when the choice is editorial and the form belongs to the content. A **block** placed by condition is right when the form belongs to a section rather than a page. An **extra field** attaches the form to every node of a type through the display, right when the form is part of what the content type is. A **paragraph** puts it in the page's flow, right when the form is one component among several and its position matters — a landing page whose sequence is hero, text, form, testimonials. That is the case component-built pages produce constantly, and it is why this exists. Version **2.0.1** requiring `ept_core`, `paragraphs` and `webform`, core requirement `^10.1 || ^11 || ^12`. Two things to plan. **A form on a page changes the page's caching** — a form carries a build id and a CSRF token, so a page containing one cannot be served from the anonymous page cache in the same way, which on a high-traffic landing page is a real change rather than a detail, and is worth knowing before a component that can be added anywhere is given to editors. And **the submission needs context**: a form placed on twelve landing pages produces submissions that are indistinguishable unless the page is recorded with them, so check that the paragraph passes the host entity into the submission, or the campaign that generated a lead cannot be identified.

---

- Add a signup form to a landing page.
- Place a form between page sections.
- Add an enquiry form to a campaign page.
- Embed a survey in a page's flow.
- Add a form component to a built page.
- Place a registration form mid-page.
- Add a feedback form to a section.
- Embed a contact form in a landing page.
- Add a download-gate form.
- Place a booking form in a page.
- Add a newsletter signup component.
- Embed a quiz in a page.
- Add a form after an introduction section.
- Place a callback request form.
- Add a form to a paragraph-built page.
- Embed an application form.
- Add a form component editors can position.
- Place a competition entry form.
