<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
GSearch provides Danish address fields backed by Dataforsyningen's official GSearch API, so an address is chosen from the national register by autocomplete rather than typed free-hand.

---

Danish addresses are authoritative data: the government publishes them through Dataforsyningen, and matching against that register is how you get consistent, geocodable, postcode-correct addresses instead of a hundred spellings of the same street. This module wires that register into Drupal as a field type with widgets, using **Select2** for the picker. `src/Services` holds the API client, which targets `https://api.dataforsyningen.dk/rest/gsearch/v2.0/` by default with both the base URL and an API token configurable; `GsearchAddress` and `AddressGsearchItemInterface` model the value; `src/Plugin` supplies the field type, widget and formatter; and two Twig templates render single and multiple addresses. Two front-end routes back the widget — `/gsearch/address` and `/gsearch/address/select2` — both gated by `access content`, which is anonymous on a typical site. That is a deliberate design (the widget must work for whoever can use the form), but it means the endpoints proxy anonymous queries to Dataforsyningen using the site's configured token, so the site's API quota is reachable by anyone who can load the site. Per this repo's convention, the token belongs in an environment variable rather than in exported configuration. Requirements are core `^10.5 || ^11`, Select2 `^2` and `thecodingmachine/safe ^2`.

---

- Let editors pick a Danish address from the official register.
- Guarantee postcode and street name are consistent.
- Autocomplete addresses as the user types.
- Store structured address data rather than free text.
- Geocode content from an authoritative source.
- Populate an address field on a contact form.
- Avoid typos in customer addresses.
- Support a Danish public-sector site's data quality rules.
- Render addresses with a Twig template.
- Use Select2 for a searchable address picker.
- Keep addresses aligned with national data.
- Configure a different API base URL.
- Support multiple addresses on one entity.
- Improve delivery accuracy for a shop.
- Match addresses for deduplication.
- Provide address data to a map integration.
- Reduce manual address correction.
- Meet a requirement to use Dataforsyningen data.
