<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Extra Field API (efap) — agent index

Defines a **plugin type for extra (pseudo) fields** on entity displays (declare computed/display-only fields
as plugins vs `hook_entity_extra_field_info()` + `hook_entity_view()`). Version **8.x-2.4**. Core
`^8||^9||^10||^11`.

Developer/API — a plugin's rendered output is developer-controlled (escape/authorize in that code); efap has
no content/access role.
