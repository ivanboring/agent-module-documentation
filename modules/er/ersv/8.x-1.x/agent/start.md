<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EntityReference Separate Selection and Validation (ersv) — agent index

**An entity reference selection plugin (`ersv`) that uses one handler to build the selectable options and a separate handler to validate submitted values.**

- **Version:** 8.x-1.x (8.x-1.3)
- **Core:** ^8.7.7 || ^9 || ^10 || ^11
- **Requires:** ajax_dependency
- **Plugin:** `Drupal\ersv\Plugin\EntityReferenceSelection\SeparateSelectionAndValidation` (`@EntityReferenceSelection` id `ersv`, group `ersv`), implements `SelectionWithAutocreateInterface`
- **Config:** set as the reference method on an entity reference field; configure nested `selection` and `validation` handlers.

**Security:** Field-configuration plugin only — no routes, permissions, services, or stored data of its own; configured by users who already administer field settings. No anonymous or mutating endpoints. No security findings.
