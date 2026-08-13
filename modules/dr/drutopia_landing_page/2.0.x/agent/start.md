<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drutopia Landing Page (drutopia_landing_page) — agent index

**DEPRECATED config-only Drutopia feature installing a Landing Page content type; the maintainers recommend using Page instead.**

- **Version:** 2.0.x
- **Core:** ^10.2 || ^11 || ^12
- **Depends:** node, paragraphs, ds, metatag, pathauto, exclude_node_title, entity_reference_revisions, drutopia_core, drutopia_seo, field, menu_ui, path, user
- **Config-only** (`config/install`): `node.type.landing_page`, `field_body_paragraph`, `field_meta_tags`, form/view displays, `pathauto.pattern.node_landing_page`, promote base-field override.
- **No PHP, no routes, no services, no permissions.**

**Security:** No code or endpoints. Access is governed by core node permissions and the shipped display/view config. DEPRECATED — do not use for new sites. No security findings.