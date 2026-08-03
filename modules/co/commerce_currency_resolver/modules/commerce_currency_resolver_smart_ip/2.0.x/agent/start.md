# Commerce Currency Resolver Smart IP — agent index

Submodule of **commerce_currency_resolver**. Resolves the *current currency* from the visitor's
Smart IP geolocated country. Smart IP equivalent of the geoip submodule.

> **Broken in 2.0.1 — do not enable.** `commerce_currency_resolver_smart_ip.routing.yml`
> references `Drupal\commerce_currency_resolver_smart_ip\Controller\CountryCurrencyResolverAutocomplete`,
> which does not exist (the class only exists in the parent module), and its mapping route reuses
> the GeoIP path + `CurrencyResolveGeoipMapping` form. Enabling it makes `drush cr` / the router
> rebuild fatal with "Class ... does not exist". Use the **geoip** submodule instead.

Key facts (from source):
- Requires `smart_ip:smart_ip`. Service `commerce_currency_resolver_smart_ip.currency`
  (`Resolver\CurrencyResolverSmartIp`), tagged `commerce_price.currency_resolver` **priority 900**.
- Config object `commerce_currency_resolver_smart_ip.currency_mapping`: `matrix`
  (`{country_code: currency_code}`) + `logic`. Schema-only until saved.
- `resolve()` = `smart_ip.smart_ip_location->get('countryCode')` → `matrix[country]` →
  `CurrencyResolverManager::getCurrencyByCode()`; NULL (falls through) if unmapped.
- Same shape/behaviour as the sibling **geoip** submodule (see
  `commerce_currency_resolver_geoip/2.0.x/agent/configure/geoip-mapping.md`) — its country/currency
  matrix and `logic` switch apply identically here.
