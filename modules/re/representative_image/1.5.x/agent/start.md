<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Representative Image (representative_image) — agent index

Defines a node's representative image **per content type**, with fallbacks, and exposes it as a
**token**. Core-only dependencies. Core requirement `^10.3 || ^11`.

Key facts:
- **The token is the point.** Metatag patterns, Pathauto, mail templates and Views rewrites all
  consume tokens, so one decision propagates to every consumer without each knowing the field
  structure. Without it, `og:image`, listing thumbnails and digest images each guess separately —
  and disagree.
- Configured per content type with a fallback order, so a node with a hero image, a body image and
  a media reference resolves predictably.
- No routes or permissions; the configuration lives with the content type.
- **Pair with alt text.** A representative image with no alt text is still an accessibility
  failure — see `imagefield_default_alt_and_title` (wave 66) and `auto_alter` (wave 64).
- `.info.yml` reports the legacy `version: '8.x-1.5'`.
