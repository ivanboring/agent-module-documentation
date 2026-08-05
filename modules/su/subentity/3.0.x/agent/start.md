<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Sub Entity (subentity) — agent index

Framework for **subentities** — content entities owned by a parent, the Paragraphs pattern
generalised. Core requirement `^10 || ^11`. **Requires Drush > 11** (`conflict: drush/drush <12`),
so the Drush integration is effectively mandatory.

Key facts:
- Admin at `/admin/structure/subentities`, with requirement
  `_permission: 'administer subentities,administer site configuration'` — the **comma is AND** in
  Drupal, so both are required. (A `+` would be OR.)
- **`ReferencedEntityAccessControlHandler` is the piece that matters**: a subentity's access
  derives from the entity that references it, rather than being decided independently. That is
  the correct model for owned data and the main thing to verify when extending the framework —
  a custom handler that ignores the parent reintroduces the leak this class prevents.
- Route generation via `EntityHtmlRouteProvider` and `BundleHtmlRouteProvider`;
  `BundleListBuilder` supplies the admin listing; `src/Services/` and `src/Drush/` provide the
  generators.
- Choose it over Paragraphs when the Paragraphs widget, revision model or type system is the
  wrong shape — not merely to avoid a dependency, since Paragraphs is far more widely deployed
  and better documented.
