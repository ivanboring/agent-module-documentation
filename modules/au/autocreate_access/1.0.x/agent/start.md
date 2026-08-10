<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Autocreate Access — agent index

**Makes entity-reference autocomplete widgets respect entity CREATE access** before offering "create new".
Version **1.0.0**. Core `^10||^11`.

**Security-positive** — without it, inline-create surfaces to users lacking create access; this checks `create`
access first. Layers on core entity access; no negative impact.
