<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Meeting API models a meeting as an entity and delegates the actual conferencing to pluggable backends, so a site can schedule and reference meetings without binding itself to one provider.

---

Sites that host meetings — a training platform, a professional body, a clinic, a community organising events — need the meeting to be a first-class thing: a content entity with a time, participants, a description and a URL, appearing in views, in calendars and in notifications. What they do not need is to be married to Zoom, and that is what a direct integration produces, because the provider's identifiers, join URLs and API semantics end up spread through the site. An abstraction layer with backend plugins keeps the provider at one boundary, so changing it is a plugin swap rather than a migration. This module takes that approach, with `meeting_api_manual` for meetings whose URL is simply pasted in — the case every such system needs and few provide — and `meeting_api_scheduler` for automated scheduling. It depends on **`datetime_range_timezone`**, which is the right dependency and a good sign: a meeting without an explicit timezone is the classic distributed-team bug, and core's date range field does not carry one. Version **1.0.0-alpha3** on core `^10 || ^11` — an **alpha**, so treat the API as unsettled. Two things to plan. **Provider credentials** belong in environment variables behind Key entities, and a meeting-platform API key can usually create and read meetings across the whole account. And **a join URL is a capability**: anyone holding it can usually enter the meeting, so it should be treated as a secret in listings, feeds and emails rather than as an ordinary field.

---

- Model meetings as content.
- Schedule a meeting from Drupal.
- Show meetings in a calendar view.
- Avoid binding a site to one provider.
- Paste a meeting URL manually.
- Notify participants of a meeting.
- Support a training platform's sessions.
- List upcoming meetings.
- Handle meeting timezones correctly.
- Support a professional body's events.
- Reference a meeting from a node.
- Automate meeting creation.
- Support a clinic's appointments.
- Swap a conferencing provider.
- Show a meeting's join details.
- Support a community's events.
- Track meeting attendance.
- Build a session schedule.
