<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Address DE (address_de) — agent index

**Adds German federal-state subdivisions and a state field to the Address module's `DE` address format via an event subscriber.**

- **Version:** 1.2.x
- **Core:** ^9.2 || ^10 || ^11
- **Dependencies:** address:address
- **Key class:** `src/EventSubscriber/AddressEventsSubscriber.php` — subscribes to `AddressEvents::ADDRESS_FORMAT` (appends `%administrativeArea`, type STATE, depth 1) and `AddressEvents::SUBDIVISIONS` (returns the 16 states).
- **Routes / permissions / services:** none beyond the subscriber; no configuration UI — enabling the module is the whole setup.
- **Security:** no routes, no user input, static local data; no anonymous or mutating endpoints. No security-relevant surface.
