<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Google Calendar Service integrates Google Calendar and related services into Drupal, importing calendar events via a Google service account.

---

Google Calendar Service integrates Google Calendar with Drupal — importing and surfacing calendar
events using a Google service account (with domain-wide delegation to read a user's calendar). It
depends on core Inline Entity Form, Text, User and Views, is configured at
`google_calendar_service.settings`, and provides its own permissions.

**Security caveat — the Google API client disables TLS certificate verification.**
`GoogleHttpClientFactory::get()` builds the HTTP client for the `\Google_Client` with `verify => FALSE`
(hardcoded), so the OAuth2 token exchange (which returns a bearer **access token**) and all Google
Calendar API calls run without validating Google's TLS certificate. Because the client uses a service
account with domain-wide delegation (`setSubject`), a man-in-the-middle on that path can capture the
delegated access token and use it against the Calendar API (impersonating the Workspace user), and can
tamper with returned calendar data. See the module's local security notes. Do not run it in production
until `verify => FALSE` is removed. Store the service-account secret file outside the web root and out
of version control, and scope the delegation minimally.

---

- Import Google Calendar events into Drupal.
- Integrate Google Calendar and related services.
- Use a Google service account.
- Configure at google_calendar_service.settings.
- Depend on inline_entity_form, text, user, views.
- Provide its own permissions.
- Note the client disables TLS verification.
- Avoid production until verify=>FALSE is removed.
- Know the delegated access token is MITM-exposed.
- Store the service-account secret outside the web root.
- Keep the secret file out of version control.
- Scope domain-wide delegation minimally.
- Surface calendar events on the site.
- Read a user's calendar via delegation.
- Understand token capture + data tampering risk.
- Rotate the service-account key if exposed.
- Review the local security notes for google_calendar_service.
- Import events via the Calendar API.
- Display Google Calendar content.
- Handle Google credentials securely.
