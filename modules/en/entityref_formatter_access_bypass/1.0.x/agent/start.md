<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Reference Formatter Access Bypass (entityref_formatter_access_bypass) — agent index

**A rendered-entity formatter that renders referenced entities the viewer CANNOT access, using an admin-chosen fallback view mode.**

- **Version:** 1.0.x  •  **Core:** ^10 || ^11 || ^12  •  **Package:** Fields
- **Plugin:** FieldFormatter `entity_reference_entity_view_access_bypass_fallback` (extends core `EntityReferenceEntityFormatter`) for `entity_reference` fields. Setting: `view_mode_fallback` (default `default`).
- **Behaviour:** accessible entity → configured view mode; inaccessible entity → `view_mode_fallback` rendered anyway (`EntityReferenceEntityViewAccessBypassFallback.php:132-166`). Recursion capped at depth 20.
- **SECURITY — intentional access bypass (by design, admin footgun):** any field present in the fallback view mode is rendered to users who lack `view` access to the referenced entity. This is the module's stated purpose; it is safe **only** if the fallback view mode is configured to contain non-sensitive fields. Never point the fallback at a full/complete view mode. No routes/permissions/services — risk is entirely in formatter configuration.
