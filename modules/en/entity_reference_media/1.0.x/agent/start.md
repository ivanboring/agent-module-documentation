<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Reference Media (entity_reference_media) — agent index

Field type, widget and formatter for referencing **media**. Depends on core `media` and
`media_library`. Core requirement `^8.8 || ^9 || ^10 || ^11`.

**Release is 1.0.0-rc7 — a release candidate, not stable.**

Key facts:
- **Core already covers the basic case**: an entity reference field targeting media, plus the
  Media Library widget. Before adopting this, establish **what its field type stores beyond the
  target ID**. If the answer is "nothing extra", core covers it with no contrib dependency, and a
  custom field type is a migration cost later.
- **The legitimate reason to want it** is per-*relationship* data — how *this* article crops or
  captions *this* image. That data does not belong on the media entity, which is shared across
  every use of it.
