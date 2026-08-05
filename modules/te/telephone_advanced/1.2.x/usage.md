<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Telephone Advanced teaches Drupal's core telephone field to actually validate and format numbers, using Google's libphonenumber rather than a regular expression.

---

Core's telephone field stores a string and checks almost nothing, which is why sites end up with `07700 900123`, `+447700900123` and `(0770) 090-0123` all meaning the same number and none of them comparable. Phone numbers are harder than they look — length, valid prefixes and formatting are all country-specific and change over time — which is why `giggsey/libphonenumber-for-php`, the PHP port of Google's libphonenumber, is the standard answer. This module wires it in: `TelephoneValidator` (behind `TelephoneValidatorInterface`) validates, `TelephoneFormatter` formats, `TelephoneTypes` and `TelephoneFormats` model the library's notions of line type (mobile, fixed line, toll-free) and output format (E.164, international, national, RFC3966), `FieldSettings` holds per-field configuration, and `src/Plugin` supplies the widget, formatter and constraint. It extends the **core** telephone field rather than defining a new field type, so an existing site can adopt it without a data migration — the values already stored simply start being validated on next save. Requirements are core `telephone` and core `^10 || ^11`.

---

- Validate phone numbers per country.
- Reject an impossible phone number at entry.
- Store numbers in E.164 format consistently.
- Display a number in national format.
- Restrict a field to mobile numbers only.
- Normalise numbers imported from a legacy system.
- Format international numbers for display.
- Make phone numbers comparable for deduplication.
- Improve SMS deliverability with valid numbers.
- Add validation to an existing telephone field.
- Avoid a regex-based phone validator.
- Accept numbers in several input formats.
- Show a click-to-call link in RFC3966 form.
- Support a multi-country customer base.
- Reduce failed calls from bad data.
- Keep using the core telephone field.
- Validate numbers on a webform.
- Detect toll-free or premium-rate numbers.
