<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Changed Fields API (changed_fields) — agent index

Reports **which entity fields actually changed** on save. Developer library — no routes, no
permissions, no configuration, no dependencies. Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- **Observer pattern:** `src/EntitySubject.php` + `src/ObserverInterface.php`. Consumers register
  as observers and receive a structured diff rather than polling `$entity->original`.
- **`FieldComparator` plugin type** (`src/FieldComparatorPluginManager.php`) — comparison logic is
  pluggable per field type, which is the point: naive `->value` comparison is wrong for
  multi-value fields, entity references, and multi-column field types like dates with timezones.
- Two example submodules under `examples/` are the real documentation:
  `changed_fields_basic_usage` and `changed_fields_extended_field_comparator`. Read those first.
- Enabling it alone does nothing visible; it exists for other code to consume.
- `.info.yml` reports the legacy `version: '8.x-3.7'`.
