<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
PhoneNumber defines a dedicated international phone number field, and — through its submodules — can validate numbers and verify that the person entering one actually controls it, by SMS.

---

The base module supplies the field type with libphonenumber behind it, so numbers are parsed and stored consistently rather than kept as free text. **phonenumber_validation** adds format and country validation. **phonenumber_verification** is the significant one: it implements the send-a-code, enter-the-code flow that proves ownership of a number, which is what makes a phone number usable for anything security-adjacent — account recovery, two-factor, or simply preventing users from entering somebody else's number. That distinction is worth being explicit about, because it is frequently confused: *validation* means the number is well-formed and could exist; *verification* means someone answered on it. Only the second is evidence of anything. The module ships CSS with `.pcss.css` sources (Drupal's PostCSS convention) including a no-script variant, and provides Drush commands. Requirements are core `field` and `giggsey/libphonenumber-for-php ~8.0`, with a wide core range of `^8.8 || ^9 || ^10 || ^11`; the release is **1.0.0-beta1**. Note that verification requires an SMS gateway, which is a cost and a configuration outside this module — and that phone numbers are personal data.

---

- Store international phone numbers in a dedicated field.
- Validate a number's format and country.
- Verify a user controls a phone number by SMS.
- Prevent users entering someone else's number.
- Support account recovery by phone.
- Collect numbers for a delivery service.
- Normalise numbers across a user base.
- Add a phone field to a registration form.
- Require verification before a number is usable.
- Support two-factor authentication flows.
- Reduce failed SMS delivery.
- Store numbers comparable for deduplication.
- Display a number in a chosen format.
- Restrict a field to particular countries.
- Verify contact details for a booking.
- Manage numbers from Drush.
- Support a site still on Drupal 8.8.
- Provide a no-script fallback for the widget.
