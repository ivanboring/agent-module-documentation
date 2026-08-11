<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Language Access — agent index

**Denies the canonical view of a translatable content entity outside its original/translated language** (returns
forbidden instead of falling back). Depends on core `language`. Provides a bypass permission. Version **1.0.0**.
Core `^10.2||^11`.

**Access-control** — an entity access check (`AccessResult::forbidden()` when `current_language !== entity
language`), honored by the canonical route + per-entity access checks (Views/JSON:API). Governs the canonical
*view* by language; verify it composes with your multilingual/fallback setup.
