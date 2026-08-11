<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Dynamic Image Generator generates images from HTML/CSS templates via third-party APIs with token replacement and media integration.

---

Dynamic Image Generator **generates images from HTML/CSS templates using third-party APIs** — rendering
templated HTML/CSS (with token replacement) into images via an external image-generation service, and storing the
result as media. It depends on core File, Image, Media, Node, User, Views, Field and System, and provides its own
permissions.

Use it to auto-generate images (e.g. social share cards). It is a media/integration feature. Security/data
handling: it **sends template content (which may include token-replaced site/entity data) to an external image
API** (egress — confirm acceptable) and authenticates with an **API key** (store as a secret — env/Key — over
HTTPS). It has no access-control role beyond its permission. Configure the image API and templates.

---

- Generate images from HTML/CSS.
- Use a third-party image API.
- Replace tokens + store as media.
- Depend on core File/Image/Media/Node.
- Provide its own permissions.
- Render templated images.
- Send template content (token-replaced data) to an external API (egress).
- Store the API key as a secret (env/Key, HTTPS).
- Have no access-control role beyond permission.
- Configure the image API and templates.
- Handle image generation.
- Generate images.
- Configure the templates.
- Render images.
- Handle the integration.
- Create share cards.
- Configure the API.
- Handle media.
- Produce images.
- Provide dynamic image generation.
