<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Field Layout (field_layout) — agent index

Arranges **Manage display** and **Manage form display** fields into the regions of a layout plugin.
Version **2.0.0**. Depends on core `layout_discovery`. No routes, permissions or config page.

**This is the continuation of the core experimental module removed in Drupal 11.3.**
`core_version_requirement: '>11.3'` — it refuses to install on core versions that still ship their
own copy, so the two can never both be active.

**Versus Layout Builder:** Field Layout arranges *the fields of one display* into regions
(per-bundle, per-view-mode, set once by a site builder). Layout Builder arranges *blocks on a
page*, can go per-entity, and can place non-field content. Field Layout has no per-entity override
and no editor-facing UI — which is the point when all that was wanted is two columns.

Stored in the display config, so it travels with a config export.