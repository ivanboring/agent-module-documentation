<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Extra Field puts a webform into an entity's display as an extra field, so the form appears in the Manage Display screen alongside real fields and can be positioned like one.

---

There are several ways to get a webform onto a node and they differ in who controls placement. A **webform reference field** stores which form on each node, which is right when the choice is editorial. A **block** placed by URL condition is right when the form belongs to a section rather than to content. **Pasting a token into the body** works and puts markup in content. An **extra field** is the fourth: the form is attached by the *display* configuration, so every node of that type shows it, positioned in Manage Display among the fields, reorderable, and switchable per view mode — visible on the full node and absent from the teaser without any conditional logic. That is the right shape when the form is part of what the content type *is*: a feedback form on every article, an enquiry form on every product, a booking form on every event. Version **2.1.0** on core `^10 || ^11`. Two things to plan. **The submission's context** is what makes this useful — a feedback form on every article is only worth having if the submission records which article, so check that the node is passed to the webform as a token or a hidden value, or every submission arrives identical and unattributable. And **the form is rendered on every page of that type**, which affects caching: a form carries a build id and a token, so a page containing one cannot be served from the anonymous page cache in the same way, and on a high-traffic content type that is a real change to the caching profile rather than a detail.

---

- Add a feedback form to every article.
- Put an enquiry form on every product.
- Attach a booking form to events.
- Position a form in Manage Display.
- Show a form on full view only.
- Add a form without a reference field.
- Reorder a form among fields.
- Attach a form per content type.
- Add a review form to a listing item.
- Show a contact form on staff profiles.
- Add a signup form to every event.
- Attach a form per view mode.
- Add a report-a-problem form to pages.
- Keep the form out of teasers.
- Attach a quote request to products.
- Add a rating form to recipes.
- Show a form beneath an article's body.
- Attach a survey to a course page.
