<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Field Help Text (fieldhelptext) — agent index

Bulk editing UI for **field description (help) text** across bundles. No dependencies.
Core requirement `^10.3 || ^11`.

| Route | Path |
|---|---|
| `fieldhelptext` | `/admin/structure/fieldhelptext` |
| `fieldhelptext.bundle` | `/admin/structure/fieldhelptext/by-bundle/{entity_type}/{bundle}` |

Both gated by the single permission **`use fieldhelptext`**.

Key facts:
- **The permission is the point.** Help text is field *configuration*, so editing it normally
  needs `administer <entity> fields` — which also permits adding, changing and deleting fields.
  This carves out description-only editing, so a content designer or technical writer can improve
  guidance without being able to alter the data model. Worth stating explicitly when
  recommending it.
- Route parameters use dedicated converters in `src/ParamConverter/` (`type: entity_type`,
  `type: bundle`), so an invalid entity type or bundle 404s rather than reaching the form.
- Changes write to field configuration, so they appear in `drush cex` output and must be
  deployed like any other config change — editing on production creates config drift.
- `.info.yml` reports the legacy `version: '8.x-1.2'`.
