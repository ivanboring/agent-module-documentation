<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Address Indonesia (address_id) — agent index

**Adds Indonesian provinces/cities and a 3-level subdivision format to the Address field via an event subscriber.**

- **Version:** 2.2.x
- **Core:** ^9.1 || ^10 || ^11
- **Requires:** address
- **Service:** `address_id.indonesia_subscriber` (tags: event_subscriber) → `IndonesiaEventSubscriber`
- **Events:** `AddressEvents::ADDRESS_FORMAT`, `AddressEvents::SUBDIVISIONS` (acts only when country_code == 'ID')
- **Routes/permissions:** none. **Config UI:** none — enabling the module is the whole setup.

**Security:** No routes, endpoints, permissions or external calls; pure address-data/format contribution — no attack surface.
