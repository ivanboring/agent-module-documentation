<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Pipewrench (pipewrench) — agent index

Lets **base fields** (e.g. a node's Title) carry a description in the UI. Depends on core `node`
and `field`. Core requirement `^10 || ^11`. **Release is 1.0.0-alpha1 — alpha.**
No routes, permissions or configuration pages.

Key facts:
- **The gap it fills:** Drupal separates *configurable* fields (added by a site builder, with a
  label and help text) from *base* fields (defined in code by the entity type). Title is a base
  field, which is why the node form's Title has no help text and Field UI offers nowhere to add
  it. The usual workaround is a per-project form alter.
- Surface: `src/Hook/`, `src/Plugin/`, `pipewrench.module` — five files.
- **Complements `fieldhelptext` (wave 61)** rather than overlapping: that one bulk-edits
  descriptions on *configurable* fields; this one makes descriptions possible on *base* fields.
  A site wanting good field guidance may reasonably run both.
