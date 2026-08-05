<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Telephone International Widget replaces the plain telephone field input with a country selector and client-side validation for international numbers.

---

Core's telephone field stores a string and validates almost nothing, which is defensible — phone number formats are genuinely diverse — and unhelpful in practice. Users enter `07700 900123` when the site needs `+44 7700 900123`, or they include the country code twice, or they use a national prefix that is meaningless to anyone dialling from abroad. If those numbers are ever used by a machine — an SMS gateway, a click-to-call link, a CRM export — the inconsistency becomes a failure at the point of use rather than at the point of entry. This widget wraps the well-established `intl-tel-input` pattern: a country dropdown with flags, automatic detection of the country from what is typed, formatting as you go, and validation against the selected country's rules, storing the number in a consistent international form. Version **2.0.0-rc2** — a release candidate — on core `^10.1 || ^11`, depending on core `telephone`. Two things to keep in mind. **Client-side validation is a usability feature, not a security control**: it improves what most people submit and is trivially bypassed, so anything relying on the number's shape must revalidate server-side. And the widget adds a **country list and JavaScript** to every form containing the field, which is worth being deliberate about on a public registration form, along with the question of whether geolocation-based country guessing is enabled, since that usually involves a third-party lookup.

---

- Collect international phone numbers.
- Validate a number's format on entry.
- Show a country selector with flags.
- Store numbers in a consistent format.
- Prepare numbers for an SMS gateway.
- Improve a registration form.
- Reduce badly formatted phone data.
- Support a global customer base.
- Format a number as it is typed.
- Add click-to-call reliability.
- Improve CRM export quality.
- Guide users to include a country code.
- Reduce failed SMS deliveries.
- Collect contact details on a webform.
- Validate a mobile number.
- Support a multi-country site.
- Improve data quality at entry.
- Replace the plain telephone input.
