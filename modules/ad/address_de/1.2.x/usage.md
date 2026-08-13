<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Adds the 16 German federal states as address subdivisions and appends an administrative-area (state) field to Germany's address format.

---
The CommerceGuys addressing library that powers the Address module omits German states because they are not used for postal addressing. This module fills that gap for sites that need the Bundesland for other purposes (tax, reporting, filtering). It is a pure event-driven extension: `AddressEventsSubscriber` listens for `AddressEvents::ADDRESS_FORMAT` and `AddressEvents::SUBDIVISIONS`, and when the country is `DE` it appends `%administrativeArea` to the format string, sets the administrative-area type to STATE with subdivision depth 1, and returns a hard-coded list of the 16 states.

There is no configuration UI, routes, permissions or services beyond the subscriber; enabling the module is the entire setup. All data is static and local — no external calls. Once enabled, address fields with country Germany expose a State select.
---
- Install alongside the Address module to get German states.
- Enable a Bundesland select on German address fields.
- Capture the federal state for German customers or contacts.
- Add state depth to the DE address format for display.
- Use the state value for regional tax rules.
- Filter or facet German content by federal state.
- Populate reports that need the German state.
- Provide consistent state naming across German addresses.
- Extend Commerce customer profiles with German states.
- Standardise DE address entry with a predefined state list.
- Avoid free-text state entry for Germany.
- Support conditional shipping by German region.
- Feed the state into views or export pipelines.
- Localise address forms for German users.
- Add subdivision metadata without patching the addressing library.
- Combine with other country subdivision modules.
- Validate that a German address includes a state.
- Drive analytics segmented by Bundesland.
- Pre-fill state options in migrations importing German addresses.
- Keep the state list maintained in code, not config.