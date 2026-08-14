<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Better Exposed Filters Field Gate adds a Better Exposed Filters widget for taxonomy-term exposed filters that hides term options unless a chosen boolean field on the term is enabled.

The widget (`FieldGateCheckboxesRadioButtons`, id `bef_field_gate`) extends BEF's RadioButtons and applies only to `TaxonomyIndexTid` filters. In its configuration form the site builder enables "field gate" and selects a boolean field on the vocabulary; at render time `exposedFormAlter()` queries the taxonomy terms whose boolean field is set to 1 (via an entity query with `accessCheck(TRUE)`) and removes non-matching term options from the exposed form, while preserving non-term options like "- Any -". This is a display-level curation of which terms appear in the filter UI; the underlying Views query and taxonomy access still apply, so it is not an access-control mechanism for the results themselves.

Use it to show only "featured" or "active" taxonomy terms in an exposed filter without maintaining a separate filtered vocabulary.
---
A Better Exposed Filters widget that limits taxonomy term options by a boolean field on the term.
---
- Show only terms flagged with a boolean field in an exposed filter
- Present a "featured categories" filter without a separate vocabulary
- Gate checkbox/radio taxonomy filter options by a term boolean
- Pick which boolean term field controls visibility
- Hide inactive/unpublished-style terms from the filter UI
- Keep "- Any -" and other non-term options intact
- Apply gating only to TaxonomyIndexTid exposed filters
- Curate long taxonomy lists down to relevant terms
- Toggle field gating per exposed filter
- Validate that a boolean field is selected when gating is on
- Use entity-query access checks when resolving allowed terms
- Combine with standard BEF styling options
- Reduce visual clutter in faceted taxonomy filters
- Drive filter visibility from an editorial boolean flag
- Configure entirely within the Views exposed-form UI
