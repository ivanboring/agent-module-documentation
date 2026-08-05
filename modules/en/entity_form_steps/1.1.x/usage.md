<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Form Steps turns an entity form into a multi-step wizard, using Field Group to define which fields belong to which step.

---

Long forms are abandoned. A registration asking thirty questions on one screen, a grant application, a detailed product submission — each presents a wall that discourages people before they start, and the standard remedy is to break it into steps with visible progress so each screen looks achievable. Doing that in Drupal has meant either the Form API's multi-step pattern, which is code and rebuilds state by hand, or moving the whole thing to Webform, which is excellent for surveys and is not an entity form, so the result is not a node or a user profile. This module keeps the entity form and adds the steps, leaning on **`field_group`** — already the standard way of organising fields into tabs and fieldsets — so the grouping is done in the form display where a site builder already works, rather than in code. Version **1.1.7** on `^9 || ^10 || ^11`. Three things determine whether the result is actually better than the wall it replaces. **Validation timing**: errors should surface on the step that caused them, not at the end, or the wizard becomes worse than a single page. **Partial saves**: decide whether abandoning at step three leaves anything behind — an unsaved wizard loses the work, a saved one creates incomplete entities that other parts of the site must tolerate. And **navigation**: users need to go back and change an answer without losing later steps, which is the requirement most step implementations quietly fail.

---

- Split a long registration into steps.
- Break up a grant application form.
- Add progress indication to a form.
- Reduce form abandonment.
- Group fields into wizard steps.
- Improve a product submission form.
- Split a profile form into sections.
- Keep an entity form but add steps.
- Guide users through a complex form.
- Reduce cognitive load on a form.
- Step through a job application.
- Improve mobile form completion.
- Organise a membership signup.
- Split a detailed listing form.
- Add steps using field groups.
- Improve completion rates.
- Structure an onboarding form.
- Break up a lengthy content type.
