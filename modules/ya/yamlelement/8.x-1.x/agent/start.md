<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Yaml Form Element (yamlelement) — agent index

Reusable **`#type => 'yamlelement'`** Form API element (textarea + YAML parse/validate), plus a
field **widget** (`YamlWidget`) and **formatter** (`YamlFormatter`). No dependencies.
Version **8.x-1.5**. Core requirement `^8.8 || ^9 || ^10 || ^11`.

Key facts:
- **What it saves:** a hand-written `#element_validate` that runs the parser and reports errors on
  the element rather than letting a parse error surface in the save handler.
- **Valid YAML ≠ acceptable data.** The element checks *syntax* only. It cannot check that keys
  are the ones your code expects or that values are in range — consuming code still needs its own
  validation and must not assume any particular parsed shape.
- **Consider what the parsed structure is used for** before exposing the element to
  less-than-fully-trusted users. YAML that becomes plugin configuration, a service argument or a
  render array is a far larger surface than YAML that becomes display text.
