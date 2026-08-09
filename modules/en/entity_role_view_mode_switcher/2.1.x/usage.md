<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Role View Mode Switcher allows the view mode to be switched based on role per entity.

---

Entity Role View Mode Switcher **renders an entity in a different view mode depending on the current
user's role** — so, per entity, different roles can see a different display (e.g. a fuller display for
editors, a trimmed one for anonymous). It works across core 8–11, in the Other package.

Use it to vary entity display by role. It is a content-display feature. Important expectation: it changes
**which view mode renders** (presentation), not what a user is *allowed* to access — it is **not** access
control (a role seeing a trimmed view mode can still reach the entity through other routes/displays, and
sensitive fields must be protected by real field/entity access, not merely hidden in a view mode). It has no
access-control role. Configure the per-role view modes.

---

- Switch view mode by user role.
- Render different displays per role.
- Show editors vs anonymous differently.
- Vary presentation by role.
- TREAT it as display, not access control.
- Not restrict what a user can access.
- Protect sensitive fields with real access.
- Know other routes still reach the entity.
- Have no access-control role.
- Configure per-role view modes.
- Handle role view modes.
- Switch displays.
- Configure the switching.
- Vary display.
- Show by role.
- Configure view modes.
- Handle the display.
- Switch by role.
- Set per-role modes.
- Provide role view modes.
