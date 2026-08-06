<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
GOV Notify Integration sends email, SMS and letters through GOV.UK Notify and its equivalents in Canada and Australia.

---

Notify is the shared messaging platform built by the UK Government Digital Service and adopted, as open source, by the Canadian and Australian governments — which is why this module names all three. For a public body it is usually not a choice but the default: it is already procured, already assessed, and it handles the parts that are hard to do well and expensive to get wrong. Templates live in Notify rather than in the site, so the wording of a statutory letter is edited by the people responsible for it and versioned there. Delivery is reported per message, so "did the applicant receive the decision" has an answer. And it sends **letters** — actual printed post — which matters because a public service cannot assume digital access, and building a print pipeline is not something a website should be doing. Version **3.2.1** on core `^10.3 || ^11`, with a `govuk_notify_views_backend` submodule. Three things belong in the deployment. **The API key is scoped and the scope matters** — Notify issues live, test and team-only keys, and using a live key in a non-production environment is how a test run sends real letters to real people, which is a recognisable incident in this sector rather than a hypothetical. **Personalisation is the payload**, so what the site sends is names, addresses, reference numbers and case details, which makes the integration a processing activity to record rather than a technical detail. And **the template is the message**: because the wording lives in Notify, the site is responsible only for supplying the right variables, so an integration that hard-codes text is defeating the arrangement it was adopted for.

---

- Send email through GOV.UK Notify.
- Send an SMS to a service user.
- Send a printed letter from a service.
- Meet a public sector messaging standard.
- Use templates managed outside the site.
- Report delivery of a decision letter.
- Support a Canadian government service.
- Send an appointment reminder by SMS.
- Support an Australian government site.
- Track message delivery status.
- Send a confirmation to an applicant.
- Support a statutory notification.
- Send a reminder to a claimant.
- Use a procured messaging platform.
- Send a letter to someone offline.
- Support a local authority's service.
- Send a verification code by SMS.
- Meet an accessibility-driven contact requirement.
