<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Link Display (entity_link_display) — agent index

**Attaches a computed `entity_link_display` link base field to every entity type with a canonical template and renders it via the "Display Link" formatter.**

- **Version:** 1.0.x
- **Core:** ^10 || ^11
- **Field:** computed base field `entity_link_display` (class `ViewModeLinkComputedField`), added by `hook_entity_base_field_info()` to entity types with a `canonical` link template; display-configurable, hidden by default.
- **Formatter:** `entity_link_display` ("Display Link", field type `link`) → `#type => link` to `$entity->toUrl()`; settings: `link_text`, `link_class`, `link_rel` (nofollow/noopener/noreferrer/external), `link_target`.
- **Setup:** Manage Display → enable "Display Link", set options. No routes, permissions, services, or config entities.
- **Security:** presentation-only; link title auto-escaped by the render system, URL derived from the entity (no user input). It does not check the viewer's access to the target entity. No security findings.
