<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Video Embed Instagram (video_embed_instagram) — agent index

Instagram provider plugin for **Video Embed Field**. Composer: `drupal/video_embed_field ^3`.
Core requirement `^10.3 || ^11`. **Release is 3.0.0-beta1 — beta.**

Key facts:
- Whole module: `src/Plugin/` (one provider plugin), `tests/`, `.info.yml`, `composer.json`,
  `LICENSE.txt`. No routes, no permissions, no configuration, no services.
- Risks are platform risks, not code risks:
  - Instagram's embed rules and API terms have changed repeatedly; a beta module tracking them
    deserves version pinning and periodic re-testing.
  - Embeds generally require the source post to remain **public** — a post set to private breaks
    the embed with no signal in Drupal.
  - Rendering loads Meta's embed script into the visitor's browser. On a site with a consent
    manager (e.g. `simple_klaro`, wave 58) that script should be gated behind consent, not
    loaded unconditionally.
- All formatter/thumbnail behaviour comes from Video Embed Field; debug there first.
