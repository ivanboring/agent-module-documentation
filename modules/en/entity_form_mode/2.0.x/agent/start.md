<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Form Mode (entity_form_mode) — agent index

Automatically selects **which form display** an entity edit form uses. No dependencies.
Version **2.0.3**. Core requirement `^10 || ^11`.

**The gap:** Drupal supports several form modes per entity type and gives almost no way to *reach*
them — create a "Quick edit" form display in the Field UI and nothing routes to it without a custom
form alter. So the feature exists and goes unused, and every role gets the same enormous form.

**The point that matters most, and is easiest to get wrong: a form mode is NOT access control.**
A field omitted from a form display is simply not saved *from that form*. It remains readable and
writable through **JSON:API, REST, a migration, a different form mode, a webform, or `drush`**.
If the requirement is that a role **must not change** a value, that is **field-level access**
(`hook_entity_field_access`, or `field_permissions`) — a form mode is the wrong tool.

Used for its actual purpose — **reducing what a person has to look at** — it is a genuine editorial
improvement.
