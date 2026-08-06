<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Address Autocomplete adds a lookup to the Address module's field, so a user types part of an address and picks the full one from suggestions.

---

Typing an address is one of the highest-friction and lowest-accuracy things a form asks of anyone. It is several fields, the format differs by country, and a person entering their own address on a phone will abbreviate, misspell the street, omit the county and put the postcode in a form the system does not expect — so the data arrives inconsistent, and a shop discovers this when the delivery fails or a charity discovers it when the mailing bounces. A lookup replaces most of that with one interaction: type a few characters, choose, and the fields are filled from a source that has the address right. Version **1.0.0-beta6** — a **beta** — on core `^10.1 || ^11`, requiring `address`, which is the right base since that module already handles the per-country format the results have to populate. Three things to plan. **The lookup provider is a contract and a cost** — address data is licensed, so a provider is either paid per lookup or free with restrictions, and a form that fires a request per keystroke can multiply that cost considerably; debouncing and a minimum character count are the levers. **What the user types is sent to the provider**, which is the beginning of a person's home address, so the request is a disclosure and belongs in the privacy notice regardless of how routine it feels. And **the manual path must remain** — no address database is complete, new-build streets and unusual addresses are missing from all of them, and a form that only accepts a chosen suggestion excludes exactly the people whose address is already hardest to deliver to.

---

- Autocomplete a delivery address.
- Look up an address by postcode.
- Reduce address entry errors.
- Speed up checkout address entry.
- Improve address data quality.
- Reduce failed deliveries.
- Autocomplete on a mobile form.
- Look up a business address.
- Fill address fields from a suggestion.
- Reduce mailing bounces.
- Improve a registration form.
- Standardise stored address formats.
- Support international address lookup.
- Reduce form abandonment at checkout.
- Look up an address for a booking.
- Improve a membership application form.
- Validate an address at entry.
- Reduce support calls about wrong addresses.
