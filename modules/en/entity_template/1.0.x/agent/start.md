<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Template — agent index

**Create entities from templates (builder UI)**. Version **1.0.0-alpha15**. Core `^9.1||^10||^11`.

**SECURITY (1.0.0-alpha15):** all `/entity_template/build/*` routes are `_access: TRUE` and the edit step renders an entity form with no create-access check → anonymous entity creation once a builder is configured. Gate with a permission/`_entity_create_access`. Depends on `typed_data`.