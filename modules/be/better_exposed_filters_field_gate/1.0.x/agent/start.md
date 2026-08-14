<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Better Exposed Filters Field Gate (better_exposed_filters_field_gate) — agent index

**A BEF checkbox/radio widget that limits taxonomy term options by a boolean field on the term.**

- **Version:** 1.0.x (1.0.0-rc1)
- **Core:** ^10 || ^11
- **Depends on:** better_exposed_filters, taxonomy
- **Key plugin:** `Plugin/better_exposed_filters/filter/FieldGateCheckboxesRadioButtons` (id `bef_field_gate`, extends BEF `RadioButtons`), applies to `TaxonomyIndexTid` filters only
- **Routes/permissions:** none of its own
- **Security:** display-level option curation only — `exposedFormAlter()` removes non-matching term options (allowed terms resolved by an entity query with `accessCheck(TRUE)`). Not a results access-control layer; the Views query and taxonomy access still govern actual data. No public endpoints.
