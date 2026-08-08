<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Reference Unrestricted Label (entity_reference_unrestricted_label) — agent index

Field formatter displaying referenced-entity labels **WITHOUT any access check** — annotation:
"Label (access bypass)". Version **2.0.0**.

**WARNING (verified, danger 2):** its `getEntitiesToView()` returns **all** referenced entities with
**no** access filter (core's version filters out inaccessible ones), so it renders the **labels/titles
of entities the user cannot access** (unpublished nodes, private content, restricted users). Honestly
named, so a **documented footgun**, not a hidden bug. Use ONLY where the labels themselves are
non-sensitive (e.g. a public taxonomy); **never** on references to access-restricted content. Prefer
core's access-respecting label formatter when unsure.