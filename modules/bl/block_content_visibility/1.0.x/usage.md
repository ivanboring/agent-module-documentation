<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Block Content Visibility persists visibility conditions on block content entities for placement reuse.

---

Block Content Visibility exposes core's Condition Plugin System UI on the block_content add/edit form, persisting visibility settings on the entity — so a custom block's visibility conditions (path, content type, role, etc.) are stored on the block content itself and reused wherever it's placed, rather than per-placement.

Note this controls block DISPLAY (when a block is shown), not data access. Administration is gated by `administer block content visibility`. Depends on core `block_content` and `block_form_alter`; supports Drupal 10.3+ and 11.

---

- Expose condition UI on block content.
- Persist visibility on the entity.
- Reuse visibility across placements.
- Configure path/type/role conditions.
- Use core's Condition Plugin System.
- Control block display (not data access).
- Gate admin with `administer block content visibility`.
- Depend on core `block_content`.
- Depend on `block_form_alter`.
- Support Drupal 10.3+ and 11.
- Configure block visibility.
- Aid site builders.
- Set conditions per block
- Manage display
- Support reusable blocks.
- Handle visibility.
- Configure conditions.
- Enhance blocks
