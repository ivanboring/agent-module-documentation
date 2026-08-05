<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Address Autocomplete adds address lookup to Webform's Address element, so a respondent types a few characters and picks a real address instead of typing five fields by hand.

---

Address entry is one of the highest-friction parts of any form and one of the biggest sources of bad data: transposed postcodes, abbreviated street types, missing counties. An autocomplete backed by an address database fixes both at once. This module supplies the Drupal side as a **provider plugin type** — `src/Plugin` with `src/Annotation` and a plugin manager — so the lookup service is swappable rather than hard-wired, with the active provider chosen in configuration at `/admin/config/webform-address-autocomplete` under `administer site configuration`. A JSON endpoint at `/webform-address-autocomplete/addresses` backs the widget, declared `_access: 'TRUE'` with the comment "Address autocomplete service is available without restrictions" — necessarily so, since the form may be filled in by an anonymous visitor. The controller reads `q` and an optional `country` from the query string and passes them to the **configured** provider; the plugin id comes from config, not from the request, so a caller cannot steer it at another service. What that openness does mean is that anyone who can load the site can consume the site's address-lookup quota through the endpoint, which matters when the provider bills per query — worth a rate limit in front of it on a public site.

---

- Let respondents pick a real address from a lookup.
- Reduce address typos on a form.
- Speed up address entry on mobile.
- Improve deliverability of collected addresses.
- Standardise address formats.
- Swap the lookup provider without changing forms.
- Add autocomplete to an existing Webform address element.
- Restrict lookups to one country.
- Reduce form abandonment.
- Improve data quality for fulfilment.
- Match addresses to a postal database.
- Configure the provider centrally.
- Write a custom provider plugin.
- Support an international address form.
- Reduce manual correction of submissions.
- Prefill city and postcode from a selection.
- Improve accessibility of address entry.
- Collect addresses that geocode reliably.
