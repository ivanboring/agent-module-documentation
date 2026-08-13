<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce License Entity Field (commerce_license_entity_field) — agent index

**Provides a Commerce License type (`entity_field`) that sets a configured value on a field of a user-owned entity when the license is active.**

- **Version:** 8.x-2.x (8.x-2.0-alpha7)
- **Core:** ^10.1 || ^11
- **Requires:** commerce_license, dynamic_entity_reference
- **Key plugin:** `Drupal\commerce_license_entity_field\Plugin\Commerce\LicenseType\EntityField` (id `entity_field`)
- **Hook:** `commerce_license_entity_field_form_alter()` blocks deleting an entity whose field is controlled by an active license.
- **Status:** README marks the module INCOMPLETE — the cart-form entity selection widget is unfinished.

**Security:** No routes, permissions, or callbacks of its own; all access flows through Commerce License. A license-lookup query in the form alter uses `accessCheck(FALSE)` only to detect controlling licenses (internal, read-only). No anonymous or mutating endpoints. No security findings.
