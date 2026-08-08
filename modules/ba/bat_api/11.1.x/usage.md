<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
BAT API exposes the Booking and Availability Management Toolkit's data — events, availability, calendars — over a REST API, so a decoupled front end or external system can read and manipulate booking data.

---

BAT (Booking and Availability Management Toolkit) models the hard part of any reservation system: what is available when, across units, with overlapping events and states. Its data is normally consumed inside Drupal; this module puts it behind REST so something outside Drupal — a mobile app, a React booking widget, another service — can query availability and work with events without rendering Drupal pages.

It depends on the BAT stack (`bat_event`, `bat_fullcalendar`) and on **REST UI** for configuring the REST resources, and it is only meaningful on a site already running BAT. The usual REST caveats apply and matter more here because availability data drives bookings: the exposed resources must have their permissions and authentication set deliberately, since an unauthenticated or over-permissive booking API is a way to read or perturb availability. Configure the REST resource access to match who should read and write booking data.

For a decoupled or integrated booking system built on BAT, it is the data interface. It provides the API surface; the booking logic and the front end are elsewhere.

---

- Expose BAT availability over REST.
- Read booking data from an app.
- Build a decoupled booking front end.
- Query availability from an external system.
- Serve calendar data over an API.
- Integrate BAT with a mobile app.
- Manipulate events via REST.
- Configure BAT REST resources.
- Set authentication on the booking API.
- Restrict who reads availability.
- Restrict who writes bookings.
- Feed a React booking widget.
- Connect BAT to another service.
- Provide a booking data interface.
- Run a headless reservation system.
- Depend on the BAT stack.
- Use REST UI to configure resources.
- Secure the availability endpoints.
- Read events over HTTP.
- Support integrated bookings.