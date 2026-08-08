<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
BEE Hotel provides a hotel booking solution built on BAT, BEE and Drupal Commerce.

---

BEE Hotel is a hotel / bed-and-breakfast **booking suite** built on BAT (Booking & Availability
Management), BEE and **Drupal Commerce** — managing bookable units (rooms), availability, seasonal/dynamic
pricing (via its `beehotel_pricealterator` plugins), guest messages, iCal, and turning bookings into Commerce
orders. It ships many submodules (addtocart, event, happening_today, ical, pricealterator(s), samplehotel,
sps, upgrade, utils, vertical), provides its own permissions, is configured at `beehotel.admin_settings`, in
the BEE Hotel package.

Use it to run hotel/B&B bookings on Drupal. It is an e-commerce/booking feature. Security posture: **payment
is delegated to Drupal Commerce** (orders/order-items are built and handed to Commerce's payment gateways,
which are server-authoritative), so this module doesn't implement its own payment-callback trust boundary.
Because it depends on a large stack (BAT, Commerce, currencyapi, etc.) and exposes booking pages, treat it as
a substantial application: keep the whole stack updated, review the public booking routes for your policy, and
gate the admin/pricing permissions. Configure units, availability and pricing.

---

- Manage hotel/B&B bookings.
- Build on BAT, BEE and Commerce.
- Handle rooms, availability and pricing.
- Turn bookings into Commerce orders.
- Provide dynamic/seasonal pricing plugins.
- Ship many submodules.
- Delegate payment to Drupal Commerce.
- Rely on Commerce's server-authoritative gateways.
- Gate admin/pricing permissions.
- Keep the whole stack updated.
- Review public booking routes.
- Configure at beehotel.admin_settings.
- Handle bookings.
- Configure units/availability.
- Manage pricing.
- Handle the booking suite.
- Configure hotels.
- Run reservations.
- Provide its own permissions.
- Handle hotel commerce.
