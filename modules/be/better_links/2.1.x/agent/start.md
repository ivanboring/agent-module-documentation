<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Better Links (better_links) — agent index
**A Link field widget adding CSS class and target (`_self`/`_blank`) options to core link fields.**

- **Version:** 2.1.x
- **Core:** ^8 || ^9 || ^10 || ^11
- **Requires:** drupal:link
- **Plugin:** `BetterLinksFieldWidget` (id `better_links_field_widget`, extends core `LinkWidget`, field type `link`)
- **Modes:** class/target each support forced, select-from-list, or manual entry
- **Security:** No routes, permissions, services, or schema — a pure field widget. No access-control or endpoint surface.