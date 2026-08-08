<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Event — agent index

Provides an **Event entity type for managing events** (first-class entities with dates via Datetime Range).
Depends on core `datetime_range`; provides permissions. Version **2.0.0-rc3**. Core `^10.3||^11||^12`.

Content/entity — events governed by the entity's access + its permissions (gate who creates/edits). No other
access role.
