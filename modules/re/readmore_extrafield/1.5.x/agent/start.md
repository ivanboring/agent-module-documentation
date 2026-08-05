<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Read More Extra Field (readmore_extrafield) — agent index

Exposes the "Read more" link as an **extra field**, so it can be positioned in Manage Display.
Depends on core `field`. Core requirement `^9 || ^10 || ^11`.

Key facts:
- Whole module: `readmore_extrafield.module`, `templates/readmore-extrafield.html.twig`,
  `.info.yml`, `LICENSE.txt`. No routes, permissions, config or `src/`.
- **Display-only.** It changes where the link renders, never the node, its access or core's node
  links — which remain available, so both can appear if the display is configured that way.
- Placement lives in the **view display configuration**, so it exports with `drush cex` and can
  differ per view mode.
- The problem it solves: core puts "Read more" inside the node links group, which has a fixed
  position. Any other placement otherwise needs a template override that reimplements
  link-rendering logic core changes between versions.
- `.info.yml` reports the legacy `version: '8.x-1.5'`.
