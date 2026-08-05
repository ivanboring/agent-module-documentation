<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Avif generates AVIF copies of image style derivatives, so browsers that support the format get a substantially smaller file while everything else keeps the original.

---

AVIF typically beats both JPEG and WebP at the same visual quality, often by a wide margin, which makes it one of the cheaper page-weight wins available — but Drupal's image system produces one derivative per style, in the source format. This module hooks that pipeline: `src/Avif.php` and `src/Plugin` with `src/Annotation` define a converter plugin type, so the actual encoding can come from whichever backend a host offers (GD, Imagick or a command-line encoder), and `src/Routing` plus `src/Controller` handle serving. A settings form at `/admin/config/media/avif` under `administer site configuration` controls the behaviour, and the dependency is core `image` alone. Two operational notes matter more than the code. AVIF **encoding is expensive** — considerably slower than JPEG, and generating derivatives on first request can make an uncached image request slow enough to time out, so a warming strategy is worth planning. And browser support, while now broad, is not universal, so the fallback path is what actually serves some visitors; verify it rather than assuming. The release is 1.1.0-rc1, a release candidate, and core requirement is `^10.3 || ^11`.

---

- Serve smaller images to browsers that support AVIF.
- Cut page weight without changing image styles.
- Improve Core Web Vitals scores.
- Generate AVIF alongside existing derivatives.
- Reduce bandwidth costs on an image-heavy site.
- Keep JPEG fallbacks for older browsers.
- Choose an encoder backend by plugin.
- Improve mobile load times.
- Compress hero images more aggressively.
- Add AVIF without a CDN image service.
- Apply AVIF to selected image styles.
- Speed up a gallery page.
- Reduce storage pressure from large derivatives.
- Improve performance on slow connections.
- Test AVIF savings before rolling out.
- Serve modern formats from Drupal itself.
- Complement responsive image styles.
- Reduce time to largest contentful paint.
