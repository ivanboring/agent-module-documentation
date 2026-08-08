<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# BAT API (bat_api) — agent index

Exposes **BAT** (Booking & Availability Management) data over **REST**. Version **11.1.0-rc3**.
Core `^10.2 || ^11`. Depends on `bat_event`, `bat_fullcalendar`, `restui`. Only meaningful on a
BAT site.

**Security matters here:** availability data drives bookings. The exposed REST resources' permissions
and authentication must be set deliberately — an unauthenticated/over-permissive booking API lets a
caller read or perturb availability. Configure resource access to who should read/write booking
data.