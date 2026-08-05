<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Registration connects the Registration module to Drupal Commerce, so signing up for an event becomes a purchasable product — with capacity, checkout, and a waitlist when the event fills.

---

Registration models capacity and sign-ups against a host entity; Commerce models products, carts and payment. Selling tickets needs both, and the join between them is what this module supplies: a Commerce product becomes a registration host, adding it to the cart creates a registration, and completing checkout confirms it. Routes hang off the product — `/product/{commerce_product}/registrations` and its settings sibling — and are gated by a **custom access check**, `_manage_commerce_registrations_access_check`, rather than a flat permission, which is the right pattern for access that must consider the product as well as the user. Two submodules cover the harder parts of real event selling: **commerce_registration_waitlist** handles what happens when capacity is reached, and **commerce_registration_change_host** allows a registration to be moved to a different event — the "can I switch to the Thursday session?" request that otherwise means a refund and a rebooking. Dependencies are substantial: six Commerce modules plus `registration`, with composer requiring **Commerce `^3.0`** and `registration ^3.4.2`. Core requirement is `^10.3 || ^11`.

---

- Sell tickets to an event.
- Create a registration when a product is purchased.
- Enforce event capacity through Commerce.
- Put attendees on a waitlist when an event fills.
- Move a registration to a different session.
- Take payment for a course place.
- Manage registrations from the product page.
- Refund and release a place.
- Sell multiple ticket types per event.
- Combine tickets with other products in one cart.
- Report on registrations alongside orders.
- Promote a waitlisted attendee automatically.
- Charge different prices per attendee type.
- Handle a conference's ticketing.
- Sell workshop places with limited capacity.
- Let attendees change their session choice.
- Confirm registration only after payment.
- Integrate event sign-up with existing checkout.
