<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity UI Builder — agent index

Allows **building administrative UIs for entities** (listing/management interfaces for entity types without
custom code). Depends on core `field_ui`; provides permissions. Version **8.x-1.13**. Core `^10.3||^11`.

Developer/admin — generated UIs expose entity management (governed by underlying entity access + its
permission); gate who can build/use them (powerful surface). No access role beyond that.
