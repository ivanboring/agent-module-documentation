<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
City Timezones improves the account form's timezone picker: instead of scanning a long list of IANA zones, a user searches for a nearby city (from a GeoNames `cities500` dataset) and the module sets the corresponding timezone automatically.

A `hook_form_alter` adds a city-selector `<select>` to the user account form (optionally enhanced with the Chosen library for searchable dropdowns) and attaches JS that, on city selection, looks up the city's IANA timezone and fills the standard timezone field. Two JSON endpoints back the JS: `/system/city-timezones/all` returns the (country-filtered, population-filtered) city list, and `/system/city-timezones/lookup` returns the IANA timezone for a posted city id. Both read a bundled TSV file and are gated by `access content`.

Settings at `/admin/config/regional/city-timezones` (`administer site configuration`) let you choose which countries to include, a minimum-population threshold (to shrink the list), and whether to use Chosen. The endpoints expose only public geographic reference data (city names and timezones), not user data.
---
Enable the module so the account form's timezone field gains a city-search selector that auto-sets the zone.
---
- Let users pick their timezone by searching for a city
- Auto-fill the IANA timezone from a selected city
- Restrict the city list to specific countries
- Set a minimum city population to trim the dropdown
- Use a custom population threshold value
- Toggle the Chosen searchable-dropdown enhancement
- Simplify timezone selection on registration/profile forms
- Serve the full city list as JSON for the widget
- Look up a single city's timezone via JSON
- Reduce user error versus a raw IANA zone list
- Localize timezone selection by nearby landmark city
- Apply the selector on the standard user account form
- Filter cities by GeoNames country code
- Cut the widget to only large cities for performance
- Configure inclusion at `/admin/config/regional/city-timezones`