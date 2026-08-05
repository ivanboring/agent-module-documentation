<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Address suggestion (address_suggestion) — agent index

Autocomplete for **Address** module fields, with a swappable **`AddressProvider`** plugin type.
Depends on `address`. Core requirement `^9.2 || ^10 || ^11 || ^12` (declares Drupal 12).

| Route | Path | Access |
|---|---|---|
| `address_suggestion.addresses` | `/address/suggestion/{entity_type}/{bundle}/{field_name}` | `_access: 'TRUE'` |
| `address_suggestion.ckeditor` | `/address/suggestion/{format}` | `_access: 'TRUE'` |

Key facts:
- **Open by necessity, not oversight** — an anonymous visitor filling in a form must be able to use
  the widget. The **provider comes from the form display's settings**, not the request, so a caller
  cannot point the lookup at another service.
- **The real consideration is quota.** Anyone who can load the site can consume the site's
  address-lookup credits through these endpoints. Rate-limit them where the provider bills per
  query. Same shape as `gsearch` (wave 59) and `webform_address_autocomplete` (wave 64).
- Unlike `existing_values_autocomplete_widget` (wave 59), the handler does **not** verify that the
  named field actually uses this widget — it reads whatever the form display component's settings
  contain. Wider surface, but nothing site-owned is returned; results come from the external
  provider.
- Provider choice is **per field widget**, so different fields can use different services.
