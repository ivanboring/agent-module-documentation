<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Geolocation Provider supplies a plugin type for geolocation services, so code asks for a location without naming which service answers.

---

Any site doing something with location eventually depends on a specific provider's API — MaxMind, ipinfo, a browser geolocation call, a CDN's country header — and that dependency spreads: the provider's response shape, its identifiers and its failure modes end up in controllers, blocks and preprocess functions. Then the contract changes, the free tier disappears, the data-protection assessment objects to a US provider, or the site moves behind a CDN that already supplies the answer for free — and the change touches everything. A plugin type keeps the provider at one boundary, so swapping it is a configuration change. Version **2.0.0** on `^8` through `^11`, depending on core `serialization`, and it does nothing on its own: it is infrastructure for modules that implement or consume providers. Three things belong in any geolocation conversation. **An IP address is personal data** under GDPR, and looking one up sends it to a third party, which is a processing activity needing a basis and a privacy-notice entry regardless of how routine it feels. **IP geolocation is approximate and confidently wrong**: it gives a country reliably, a city sometimes, and anything finer rarely — and it is wrong for VPN users, mobile networks and corporate proxies, so gating access or content on it produces a support queue. And **a lookup on the request path is a network call on the request path**, so cache the result per session or per IP prefix, or the site's response time becomes the provider's.

---

- Abstract a geolocation provider.
- Swap MaxMind for another service.
- Support several location sources.
- Move geolocation behind a plugin.
- Use a CDN's country header.
- Support a provider change without refactoring.
- Provide location to a custom module.
- Support a data-protection-driven provider change.
- Add a fallback geolocation source.
- Test geolocation with a stub provider.
- Support regional content targeting.
- Provide country detection to a module.
- Abstract browser and IP geolocation.
- Support a multi-region site.
- Reduce coupling to a location API.
- Provide geocoding to several consumers.
- Support a provider with a free tier limit.
- Standardise location lookups.
