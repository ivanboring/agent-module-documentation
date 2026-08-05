<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Avif (avif) — agent index

Generates **AVIF** copies of image style derivatives. Depends on core `image`.
Core requirement `^10.3 || ^11`. **Release is 1.1.0-rc1 — release candidate.**
Settings at `/admin/config/media/avif` (`administer site configuration`).

Key facts:
- Defines a **converter plugin type** (`src/Plugin/`, `src/Annotation/`, `src/Avif.php`) so
  encoding can use whichever backend the host provides. Check what is actually available —
  GD's AVIF support depends on the PHP build, and Imagick's on the linked ImageMagick.
- `src/Routing/` + `src/Controller/` handle serving, so requests are routed through Drupal rather
  than served purely as static files. That matters for a CDN in front: confirm the cache keys and
  `Vary`/content-negotiation behaviour before assuming edge caching works.
- **Encoding cost is the practical constraint.** AVIF encoding is markedly slower than JPEG.
  Generating derivatives on first request can make an uncached image slow enough to time out on a
  large image — plan derivative warming rather than relying on request-time generation.
- Browser support is broad but not universal; the **fallback path is what serves some visitors**,
  so test it explicitly rather than assuming.
