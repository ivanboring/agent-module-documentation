<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# City Timezones (city_timezones) — agent index

**City-search timezone picker** for the user account form: pick a GeoNames city, the IANA timezone is set automatically.

**Version:** 1.0.x (1.0.0). Core: `^10 || ^11`. Depends on core `datetime`, `user`, and contrib `chosen`.

`hook_form_alter` adds a `timezone_city` select to the `AccountForm` + JS library `city_timezones/city-timezones`. Routes: `city_timezones.all` `/system/city-timezones/all` and `city_timezones.lookup` `/system/city-timezones/lookup` (both `_permission: access content`, read a bundled `inc/cities500.txt` TSV, return JSON); settings `/admin/config/regional/city-timezones` (`administer site configuration`) → config `city_timezones.settings` (`include_countries`, `size`/`size_custom`, `chosen`).

**Security:** the two data endpoints use `_permission: access content` (effectively anonymous), but they only return public GeoNames reference data (city list / timezone lookup) and perform no mutation — low risk. Admin settings gated by `administer site configuration`. No other findings.