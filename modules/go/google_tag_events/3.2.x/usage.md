<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Google Tag Manager: Events supplies the plumbing for pushing server-side events into GTM's data layer — the piece the main Google Tag module leaves to each site to invent.

---

The `google_tag` module puts the container snippet on the page; what it does not solve is how a server-side occurrence — a form submitted, an order placed, a login completed — reaches the data layer on the *next* page the visitor sees. This module's answer is a plugin type plus a stash. `GoogleTagEventsPluginManager`, `GoogleTagEventsPluginBase` and `GoogleTagEventPluginInterface` let a module declare an event; `GoogleTagEvents` collects them; and `PrivateTempStoreFactory` with `PrivateTempStoreCookie` holds pending events across the redirect, including for anonymous visitors, who have no session until one is started. `LazyBuilder` then injects the queued events into the rendered page without spoiling page cacheability, and an `Ajax` namespace covers events raised during AJAX responses. Configuration sits at `/admin/config/services/google-tag/events/settings` under `google_tag`'s own `administer google_tag_container` permission. Dependencies are `google_tag ^2.0` and `js_cookie ^1`. The cookie-backed tempstore is the detail to weigh in a privacy review: anonymous event queuing implies a cookie set before any consent decision, so check how it interacts with the site's consent tooling.

---

- Push a server-side event into GTM's data layer.
- Track form submissions in Google Tag Manager.
- Fire a conversion event after a redirect.
- Record events for anonymous visitors.
- Add a custom event from a contributed module.
- Track login or registration completion.
- Queue an event raised during an AJAX request.
- Keep event injection compatible with page caching.
- Standardise event naming across a site.
- Measure a multi-step funnel.
- Report e-commerce events to GTM.
- Trigger a remarketing tag on a specific action.
- Build analytics events without custom JavaScript.
- Share event definitions across several sites.
- Attach data-layer variables to an event.
- Restrict event configuration to tag administrators.
- Debug which events a page will emit.
- Integrate Drupal workflows with marketing analytics.
