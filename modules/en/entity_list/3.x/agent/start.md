<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity List (entity_list) — agent index

Entity type for **configurable lists of entities** (lighter alternative to Views). Version **3.0.9**.

**Security:** confirm listings **respect entity access** (an entity the user can't view shouldn't
appear) — a custom listing must call entity access itself where core doesn't enforce it
automatically.