<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT: Timeline (ept_timeline) — agent index

Timeline paragraph type for the **Extra Paragraph Types** family, with per-instance style settings.
Version **2.0.1**. Core `^10.1 || ^11 || ^12`. Depends on `ept_core`, `paragraphs`.
No routes or permissions.

Classes: `Plugin/Field/FieldWidget/EptSettingsTimelineWidget`, `Hook/EptTimelineHooks`.

`EptSettingsTimelineWidget` extends `ept_core`'s `EptSettingsDefaultWidget` and **declares no
constructor**, so it inherits the parent signature. **Verified:** it instantiates cleanly against
`ept_core` 2.0.0, unlike its sibling `ept_cta` 2.0.1, which overrides the constructor with a stale
arity and fatals. Cite that contrast when advising on the family.

Adoption note: install `ept_core` plus the component types you need, and **pin the EPT modules
together** — the shared widget base class's signature has changed between releases and the
individual modules do not constrain it.