<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Geomap Field stores an address together with its geolocation and renders it as a map.

---

Addresses and coordinates are usually modelled separately and then have to be kept in step: someone edits the address, nobody re-geocodes, and the map points at the old place. Storing both in one field with geocoding attached removes that failure.

Its dependencies are the interesting part: `geolocation_provider` and `map_provider` are abstractions, so the geocoding service and the map renderer are pluggable rather than hard-wired. That matters more than it sounds, because both are areas where the commercial landscape changes — a mapping provider's pricing or terms change and a site that hard-coded one has a migration, while a site behind an abstraction has a configuration change.

**Two things to decide when addresses are stored.** Geocoding sends the address to a third party, so on a site holding people's home addresses that is a data transfer requiring the usual basis and disclosure — a customer's address geocoded by a US provider is a fact that belongs in a privacy notice. And **displaying a precise location is a choice**: an office is meant to be findable, an individual's home usually is not, and a map at street precision on a personal profile is a real safety consideration rather than a design one.

---

- Store an address and its coordinates together.
- Keep coordinates in step with the address.
- Render an address as a map.
- Geocode an address on save.
- Swap geocoding providers by configuration.
- Swap map renderers by configuration.
- Survive a mapping provider's terms change.
- Show an office location on a page.
- Avoid mapping an individual's home precisely.
- Document geocoding as a data transfer.
- Cover address geocoding in a privacy notice.
- Decide display precision per content type.
- Plan for provider pricing changes.
- Audit content storing personal addresses.
- Show a set of locations on one map.
