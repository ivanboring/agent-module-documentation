<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
UI Patterns Display Suite connects the UI Patterns component system to Display Suite, so DS layouts and field templates can render through UI Patterns components.

---

UI Patterns lets a site define reusable components (a card, a media object) and render entities/fields through them; Display Suite is a layout system for entity displays. This integration bridges them, so a Display Suite configuration can map to UI Patterns components — build the display in DS, render it with the design-system component. It is a theming/integration module with no security surface of its own; it renders access-controlled field data through components authored in the theme layer.

It depends on both UI Patterns and Display Suite, and is only useful when both are in play. It is part of the UI Patterns ecosystem of integrations (alongside the Field Group and field-formatter integrations).

---
- Render Display Suite via UI Patterns.
- Map DS fields to components.
- Use design-system components in DS.
- Bridge UI Patterns and Display Suite.
- Render entity displays as patterns.
- Build displays in DS with components.
- Reuse UI Patterns in DS layouts.
- Depend on ui_patterns and ds.
- Theme entity displays with patterns.
- Keep field access intact.
- Compose DS and UI Patterns.
- Apply components to displays.
- Use with the UI Patterns ecosystem.
- Render fields as components.
- Standardise DS output.
- Confirm both modules are present.