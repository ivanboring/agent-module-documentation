<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Custom Entity Id — agent index

Lets editors **set a custom entity ID on the create page** (specific ID vs auto-increment — migrations/
predictable IDs/external matching). Config at `custom_entity_id.settings`; provides permissions. Version
**1.0.2**. Core `^9.2||^10||^11`.

**Note:** manual ID assignment is a sensitive admin capability — restrict the permission (ID collisions/
clashes → integrity issues; predictable IDs aid enumeration). No content-access role beyond permission.
