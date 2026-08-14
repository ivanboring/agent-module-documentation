<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DKAN extra fields makes individual JSON Schema properties of DKAN content available as pseudo-fields you can place and order in *Manage display*.

---

DKAN stores dataset metadata as JSON against a schema; those properties are not normally individual Drupal fields. This module registers extra fields (via `hook_entity_extra_field_info`-style logic in the `.module`) so each schema property — including enum values and multi-property items — can be shown, hidden, reordered and themed on the node display (e.g. `admin/structure/types/manage/data/display`). It ships `dkan_extra_field`, `dkan_extra_field_enum` and `dkan_extra_field_item` theme hooks with many theme suggestions, and expects a bundled patch (`4310-plus.patch`) applied to DKAN.

It is a display-only module: no routes, no permissions, no writes — it only renders metadata already stored on the entity. Setup: apply the patch, enable the module, then arrange the new extra fields on the relevant content type's display.

---
- Show a dataset's publisher, license or contact as its own display row.
- Reorder individual schema properties in Manage display.
- Hide schema properties you do not want rendered.
- Render enum property values with a dedicated theme hook.
- Output multi-property items together in one extra field.
- Customize labels/values via `hook_preprocess_HOOK()` for `dkan_extra_field_item`.
- Theme a property differently per view mode using theme suggestions.
- Expose spatial or temporal metadata as visible fields.
- Build a tailored dataset detail page from schema properties.
- Avoid custom Twig to surface JSON metadata.
- Vary output by property key with generated theme suggestions.
- Present keyword/tag arrays as readable lists.
- Add distribution/resource metadata to the display.
- Keep display config exportable per content type.
- Combine with DKAN metastore search results display.
- Relabel a property's key in the rendered item.
- Show only selected properties in a teaser view mode.
- Drive consistent metadata layout across datasets.
