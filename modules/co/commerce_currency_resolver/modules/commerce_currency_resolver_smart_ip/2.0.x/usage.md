Submodule of Commerce Currency Resolver that picks the shopper's currency from their Smart IP geolocated country via an admin-managed country → currency mapping. NOTE: version 2.0.1 ships a broken route and cannot be enabled as-is.

---

The submodule registers a `commerce_price.currency_resolver` service (`CurrencyResolverSmartIp`, priority 900) that reads the visitor's country from the `smart_ip.smart_ip_location` service (`get('countryCode')`) and looks it up in the `commerce_currency_resolver_smart_ip.currency_mapping` config object's `matrix` (`country_code => currency_code`); unmapped countries return NULL and the chain falls through. It is the Smart IP equivalent of the geoip submodule and requires the contrib **Smart IP** module (`smart_ip:smart_ip`). Important: in release **2.0.1** the submodule's `*.routing.yml` references a controller class `Drupal\commerce_currency_resolver_smart_ip\Controller\CountryCurrencyResolverAutocomplete` that does not exist (that class lives only in the parent module's namespace), and its mapping route/form reuse the GeoIP path and `CurrencyResolveGeoipMapping` class — so enabling the module makes the router rebuild fail with a "Class ... does not exist" fatal. Until fixed upstream, prefer the **geoip** submodule for the same behaviour.

---

- Resolve currency from the visitor's country using Smart IP instead of GeoIP.
- Map countries to currencies via `commerce_currency_resolver_smart_ip.currency_mapping:matrix`.
- Serve as the location-based resolver on sites already using Smart IP.
- Provide a country-driven currency that a cookie choice can override.
- Outrank the language resolver (priority 900 vs 800).
- Fall through to language/store default for unmapped countries.
- Read the country→currency matrix when debugging currency selection.
- Use Smart IP's `countryCode` session data as the geolocation source.
- Serve international traffic with location-aware pricing.
- Swap in for geoip where Smart IP is the site's chosen geolocation stack.
- Assign one currency per country in the mapping.
- Group multiple countries under one currency in the mapping.
- Seed Smart IP currency mappings in a config export / recipe (once the route bug is patched).
- Target new markets by adding country mappings.
- Keep currency stable per country regardless of interface language.
- Avoid per-country stores by resolving currency from IP.
- (Blocked in 2.0.1) enable the submodule — do not, until the missing autocomplete controller / duplicated GeoIP route is fixed, or the router rebuild will fatal.
