<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Extends the Address module with a predefined list of Indonesian provinces and cities plus a matching address format.

---

The core Address module relies on the commerceguys/addressing library, which does not ship city-level subdivisions for Indonesia (ID) because they are not required for postal addressing. This module fills that gap. A single event subscriber (`IndonesiaEventSubscriber`) listens on the Address module's `ADDRESS_FORMAT` and `SUBDIVISIONS` events: for country code `ID` it sets `subdivision_depth` to 3 and supplies the province → city hierarchy so an Indonesian address widget shows province and city selects.

There is no configuration UI, no routes, no permissions and no services beyond the tagged subscriber — enabling the module is the entire setup task. It only alters address data for the `ID` country; all other countries are untouched. Operationally it is a pure data/format contribution with no external calls or user-facing endpoints, so it carries no security surface.

---
- Enable the module to add Indonesian subdivisions to Address fields
- Provide province selects on an Indonesian address form
- Provide city selects nested under each province
- Set the ID address format to 3-level subdivision depth
- Localize checkout billing/shipping address for Indonesian stores
- Populate a customer profile address with Indonesian provinces
- Use with Commerce for ID-based tax/shipping zones
- Store structured province/city values rather than free text
- Standardize Indonesian address data entry across content
- Add ID subdivisions without patching the addressing library
- Combine with the Address field on any entity (node, user, profile)
- Drive conditional address widgets by administrative area
- Support Indonesian address validation in forms
- Feed consistent province data into Views filters
- Provide predefined options for import/migration mapping
- Avoid manual free-text province entry errors
- Extend only ID addresses while leaving other countries default
- Use the subscriber pattern as a template for other countries
