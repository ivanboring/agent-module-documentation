<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Telephone International Widget (telephone_international_widget) — agent index

Field **widget** for core's telephone field: country selector, as-you-type formatting, and
validation against the selected country's rules (the `intl-tel-input` pattern). Depends on core
`telephone`. Version **2.0.0-rc2** — a release candidate. Core requirement `^10.1 || ^11`.

**What core does:** stores a string, validates almost nothing — defensible given the diversity of
formats, unhelpful in practice. Users enter `07700 900123` where the site needs
`+44 7700 900123`, and the inconsistency surfaces later at an SMS gateway, a click-to-call link or
a CRM export.

**Two things to keep in mind:**
1. **Client-side validation is a usability feature, not a security control.** It improves what most
   people submit and is trivially bypassed — anything relying on the number's shape must
   **revalidate server-side**.
2. **It adds a country list and JavaScript to every form containing the field.** Be deliberate on a
   public registration form, and check whether **geolocation-based country guessing** is enabled —
   that usually means a third-party lookup.
