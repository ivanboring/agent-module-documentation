<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
GraphQL Webform exposes Webform's form definitions and submission handling through GraphQL, so a decoupled front end can render a Drupal-managed form and post to it.

---

Forms are the hardest thing to decouple well. A JavaScript front end can fetch content easily and then has to reproduce the form: every field, its validation, its conditional logic, its options and its error messages — all of which live in Webform's configuration and change whenever an editor edits the form. Reimplementing that in the front end means the two drift, and the drift shows up as a form that accepts what the server rejects. Exposing the **definition** over GraphQL inverts it: the front end asks what the form is and renders from the answer, so an editor's change reaches the front end without a deployment. This module does that for Webform, requiring `webform 6.x` and `graphql 5.x`, with a `graphql_webform_captcha` submodule. Version **3.0.0-beta1** — a **beta** — on core `^10.3 || ^11`, declaring `php: 8.3`. Three things to establish. **Server-side validation is the only validation** — the front end's checks are a convenience, and every constraint Webform declares must be enforced when the submission arrives, since a decoupled client is entirely under the submitter's control. **Spam protection is the reason the captcha submodule exists**: an unprotected form endpoint is found and abused quickly, and honeypot and time-based checks that work by rendering hidden fields do not survive a client that renders its own form, so the protection has to be one that works over an API. And **file uploads and multi-step forms are where these integrations stop being complete**, so check both against the site's actual forms rather than a simple contact form.

---

- Render a Drupal webform in a React front end.
- Post submissions from a decoupled site.
- Keep form definitions in Drupal.
- Avoid reimplementing form validation.
- Let editors change a decoupled form.
- Expose form options over GraphQL.
- Support a headless contact form.
- Add captcha to a decoupled form.
- Query a form's fields and labels.
- Support a mobile app's forms.
- Build a Next.js form from Drupal.
- Keep conditional logic in one place.
- Submit a registration from a front end.
- Support a decoupled survey.
- Expose validation messages to a client.
- Build a Vue form from a webform.
- Support an app's feedback form.
- Keep editorial control of forms.
