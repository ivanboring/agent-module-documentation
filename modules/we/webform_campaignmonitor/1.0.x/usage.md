<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Campaign Monitor adds a Webform handler that subscribes a submitter to a Campaign Monitor list when a form is submitted.

---

The newsletter signup is the most common integration on any marketing site and the one most often built badly — an embedded form from the provider that does not match the site's design and does not go through Drupal's validation, or a custom submit handler that posts to an API and has no error handling. A Webform handler is the right shape: the form is a Drupal form with the site's styling, validation, spam protection and accessibility work, and the subscription is a handler that runs after a valid submission. Version **1.0.1** on core `^10.3 || ^11.0`, requiring the `campaignmonitor` module and `webform`. Three things to settle. **Consent is the whole point of a subscription form**, so the record needs to show what the person agreed to and when — an unticked box that the handler subscribes anyway is the failure mode regulators look for, and a pre-ticked box is not consent under GDPR. **API failure needs a plan**: if Campaign Monitor is unreachable when someone submits, the options are to fail the submission (losing a signup for a reason the visitor cannot act on), to succeed silently (losing the subscription with nobody knowing), or to queue and retry — and only the third is really acceptable, so check what this does. And **the API key is a live credential** over the organisation's subscriber list, which is both personal data and a commercial asset — environment variable, Key entity, and scoped as narrowly as the provider allows.

---

- Subscribe visitors to a newsletter.
- Add a signup form with site styling.
- Send webform submissions to a list.
- Capture consent with a subscription.
- Add a marketing signup to a page.
- Subscribe after an event registration.
- Route submissions to a mailing list.
- Add a newsletter block form.
- Capture subscriber preferences.
- Support a campaign landing page.
- Subscribe a user on registration.
- Add custom fields to a subscription.
- Support a segmented mailing list.
- Replace an embedded provider form.
- Add spam protection to a signup.
- Support a charity's supporter signup.
- Capture a double opt-in flow.
- Track signups from a form.
