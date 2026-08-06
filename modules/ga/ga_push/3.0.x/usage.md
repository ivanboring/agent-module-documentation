<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Google Analytics Push sends events to Google Analytics from Drupal, so things that happen on the server are measurable alongside things that happen in the browser.

---

Page-view analytics answers where people went and not what happened. The events that matter to an organisation are usually server-side facts: a form was submitted and passed validation, an order completed, a file was downloaded, a user registered, a search returned nothing. Some of those can be inferred from a thank-you page URL, badly; others cannot be seen from the browser at all, because the browser only knows what it sent, not what the server decided. Pushing events from PHP closes that gap, and the module provides an API other modules can call as well as its own configuration, version **3.0.0-alpha1** — an **alpha** — on core `^10.3 || ^11`. Three things worth attaching. **Server-side events bypass the visitor's controls**, exactly as `meta_conversions_api` does: there is no browser request for an ad blocker to stop, so if the visitor declined tracking, the site must not send the event, and that is a decision in code rather than a script the consent manager withholds. **Event data is data leaving the site**, so an event carrying an order value, an email address or a search term has sent that to Google, and search terms in particular are notorious for containing things visitors did not mean to publish. And **GA4's model is events throughout**, having replaced the older category/action/label scheme entirely, so check which shape the module produces against what the property expects — a mismatch produces events that arrive and cannot be reported on.

---

- Track a completed form submission.
- Measure order completion server-side.
- Track a file download.
- Record a registration event.
- Measure a failed search.
- Track events an ad blocker would stop.
- Send events from a custom module.
- Measure a workflow transition.
- Track a subscription start.
- Record a payment outcome.
- Measure a validated form submission.
- Track a booking confirmation.
- Send an event after cron work.
- Measure a server-side redirect.
- Track a login event.
- Record a content publication.
- Measure an API-driven action.
- Track a conversion reliably.
