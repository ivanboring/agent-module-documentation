<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config entity reference selection (config_entity_reference_selection) — agent index

Entity reference **selection plugin** limiting which **configuration entities** a field may target.
No dependencies, no UI beyond field settings. Version **2.0.3**.
Core requirement `^10.1 || ^11 || ^12` (reaches into a major that does not exist yet).

**The asymmetry it fixes:** references to *content* entities get views-based selection, bundle
filters and sorting. References to *config* entities get everything that exists — and everything
any module adds later. A "layout style" field ends up listing forty image styles, and a new one
from a contrib module silently becomes a choice.

**Useful property:** the allowed list is **field configuration**, so it exports and deploys with
everything else — the constraint travels between environments rather than living in a developer's
head.

Typical targets: image styles, view modes, text formats, workflows, roles, menus, languages.
