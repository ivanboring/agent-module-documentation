<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
REST Absolute URLs rewrites relative URLs in serialised content to absolute ones, so an API consumer receives links and image sources it can actually resolve.

---

Drupal renders links and image sources relative to the site root, which is correct in a page and useless in an API response. A decoupled front end on a different origin, a mobile app, or a system consuming an export receives `/sites/default/files/photo.jpg` and `/node/12` with no way to know what host they belong to — so every consumer ends up prefixing the base URL itself, in several places, inconsistently, and the bug surfaces later as a broken image on one screen. Doing the rewrite once at the serialisation layer means every consumer gets resolvable URLs without knowing anything. This module does that for content exposed through any REST service, depending on core `serialization` with a wide range of `^8 || ^9 || ^10 || ^11`. The thing to get right is which base URL it uses: on a site behind a reverse proxy or CDN, the host Drupal believes it is serving depends on `trusted_host_patterns` and the reverse-proxy settings in `settings.php`, so absolute URLs will be wrong if those are wrong — and wrong in a way that only shows up in the API, not in the browser.

---

- Return absolute image URLs to a decoupled front end.
- Give a mobile app resolvable links.
- Avoid prefixing base URLs in every consumer.
- Fix broken images in an API response.
- Export content with usable URLs.
- Support a front end on another origin.
- Serialise links consumers can follow.
- Reduce consumer-side URL handling.
- Feed a static site generator.
- Support a mobile app's image loading.
- Provide absolute URLs in a feed.
- Avoid inconsistent URL prefixing.
- Support an integration consuming REST.
- Rewrite URLs at the serialisation layer.
- Handle file and link fields uniformly.
- Reduce bugs in a decoupled build.
- Provide URLs usable in email.
- Support a headless architecture.
