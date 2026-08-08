<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Track Usage (track_usage) — agent index

Tracks **usages of an entity type by source entities** (lightweight entity-usage tracker). Version
**1.0.0-alpha7**. Metadata, no unusual security surface.

**Caveat:** empty usage = 'not tracked', not necessarily 'not used' — don't treat absence as proof
an entity is safe to delete.