<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DKAN extra fields (dkan_extra_fields) — agent index

**Exposes DKAN JSON Schema properties as extra (pseudo) fields in the field-display UI.**

- **Version:** 4.0.x · **Core:** ^10 || ^11 · **Depends on:** dkan_metastore_search
- **Mechanism:** registers extra fields for schema properties; renders via theme hooks `dkan_extra_field`, `dkan_extra_field_enum`, `dkan_extra_field_item` with per-property/view-mode theme suggestions (`dkan_extra_fields.module`).
- **Requires:** bundled `4310-plus.patch` applied to DKAN.
- **Customize:** `hook_preprocess_dkan_extra_field_item()` to tune labels/values.
- **Security:** display-only; no routes, permissions, or writes — renders metadata already on the entity.
