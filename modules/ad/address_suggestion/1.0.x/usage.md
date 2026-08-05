<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Address suggestion adds autocomplete to the Address module's fields, so an address is chosen from a lookup service instead of typed into five separate boxes.

---

Address entry is slow and error-prone, and an autocomplete backed by a real address database fixes both. This module supplies it as a pluggable layer: an `AddressProvider` plugin type means the lookup service is swappable, with the active provider chosen in the **field widget's settings** rather than globally, so different fields can use different providers. Two JSON routes back it — `/address/suggestion/{entity_type}/{bundle}/{field_name}` for field widgets and `/address/suggestion/{format}` for a CKEditor integration — both declared `_access: 'TRUE'`, which is necessary because the form may be filled in by an anonymous visitor. The provider is read from the form display's settings rather than from the request, so a caller cannot redirect the lookup at another service. What the open routes do mean is that anyone who can load the site can consume the site's address-lookup quota, which is the same consideration recorded for `gsearch` (wave 59) and `webform_address_autocomplete` (wave 64) — worth a rate limit where the provider bills per query. Its `core_version_requirement` of `^9.2 || ^10 || ^11 || ^12` already covers Drupal 12.

---

- Autocomplete an address field.
- Reduce typos in collected addresses.
- Speed up address entry on mobile.
- Choose a lookup provider per field.
- Improve deliverability of postal addresses.
- Insert an address in CKEditor.
- Standardise address formats.
- Support several countries' address formats.
- Swap providers without changing fields.
- Reduce form abandonment.
- Prefill city and postcode from a selection.
- Improve data quality for fulfilment.
- Write a custom address provider plugin.
- Restrict suggestions to one country.
- Improve accessibility of address entry.
- Collect geocodable addresses.
- Reduce manual correction of submissions.
- Prepare an address field for Drupal 12.
