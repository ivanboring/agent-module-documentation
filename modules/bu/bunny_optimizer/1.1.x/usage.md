<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bunny Optimizer renders Drupal images through Bunny Optimizer.

---

Bunny Optimizer renders **Drupal images through Bunny Optimizer** — Bunny.net's CDN image-optimization
service — so images are served optimized/resized from Bunny's edge instead of processed locally. It requires
PHP 7.4, depends on core File/Image and File MDM, in the Media package.

Use it to offload image optimization to Bunny.net. It is a performance/media/CDN feature. Notes: images are
served via **Bunny.net** (a third-party CDN — image requests go to Bunny's edge), so image delivery depends on
that service and its terms; handle any Bunny **API/CDN credentials** as secrets and use HTTPS. It has no
access-control role. Note that public-image delivery through a CDN doesn't add access control (images served
via the CDN are as public as their source). Configure the Bunny Optimizer settings.

---

- Render images through Bunny Optimizer.
- Serve optimized images from Bunny.net.
- Offload image processing to the CDN.
- Require PHP 7.4.
- Depend on core File/Image and File MDM.
- Serve images from Bunny's edge.
- Note images are served via a third-party CDN.
- Handle Bunny credentials as secrets (HTTPS).
- Know CDN delivery adds no access control.
- Have no access-control role.
- Configure the Bunny settings.
- Handle image optimization.
- Optimize images.
- Configure the CDN.
- Serve via Bunny.
- Handle the integration.
- Deliver images.
- Optimize via CDN.
- Secure the credentials.
- Provide Bunny optimization.
