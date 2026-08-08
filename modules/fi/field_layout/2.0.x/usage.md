<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Field Layout lets Manage display and Manage form display arrange fields into the regions of a layout plugin instead of a single ordered list. It is the contrib continuation of the core experimental module of the same name.

---

The core history is the thing to know first. `field_layout` shipped in Drupal 8 as an experimental core module, sat there for years, and was removed from core in 11.3. The contrib project picks it up; the `core_version_requirement: '>11.3'` in its info file is the seam — it deliberately refuses to install on any core that still ships its own copy, so there is no ambiguity about which one is active.

What it does is unchanged. Every entity view display and form display gains a layout selector backed by `layout_discovery`, and fields are assigned to that layout's regions. Two-column and three-column layouts come from core; any layout plugin a theme or module defines is available too. The result is stored in the display configuration, so it travels with a config export like any other display setting.

It is worth being clear about where this sits relative to Layout Builder, because they solve overlapping problems differently. Field Layout arranges **the fields of one entity's display** into regions — a per-bundle, per-view-mode decision made once by a site builder. Layout Builder arranges **blocks on a page**, optionally per entity, and can place things that are not fields at all. Field Layout is much smaller, has no per-entity override, and does not require the editor to learn a new interface.

For a site that only ever wanted its fields in two columns, that difference is the whole argument.

---

- Arrange fields into two columns.
- Arrange fields into three columns.
- Apply a layout to a view mode.
- Apply a layout to a form display.
- Use a theme-provided layout for fields.
- Keep field arrangement in configuration.
- Replace the core module removed in 11.3.
- Avoid Layout Builder for a simple column split.
- Assign fields to named regions.
- Vary the layout per view mode.
- Vary the layout per bundle.
- Export field layouts with config.
- Use layouts defined by layout_discovery.
- Keep editors out of a layout interface.
- Restore a display arrangement lost when core dropped the module.
- Style regions with the layout's own template.