<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Publishing Dropbutton (publishing_dropbutton) — agent index

Restores the split **Save and publish / Save as unpublished** dropbutton on the node form, for
both plain nodes and `content_moderation`. Depends on core `system (>=8.4)`.
Core requirement `^9.1 || ^10 || ^11`. No routes, permissions or configuration.

Key facts:
- Surface: `src/NodePublishingDropbutton.php`, `src/Plugin/`, `publishing_dropbutton.module`.
- **Presentation only.** The same permissions decide what an editor may publish and the same
  moderation states exist — it changes how the choice is presented, not who may make it.
- History: Drupal 8 originally shipped this control; core replaced it with a Published checkbox
  plus one Save button. Teams that trained on the original often find the replacement makes state
  changes easy to miss, especially alongside a moderation-state select.
- `test_dependencies: workbench_moderation` reflects its lineage from the pre-`content_moderation`
  era; it works with core Content Moderation.
