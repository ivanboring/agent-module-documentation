<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Media Remote Image adds a media source for images that live somewhere else — a URL is stored rather than a file, and the media entity references the remote asset.

---

Not every image should be uploaded. A digital asset management system is the authoritative home for an organisation's photography and re-uploading into Drupal creates a second copy that immediately starts to drift. A partner supplies imagery on their own CDN under their own licence. A product catalogue's photographs are owned by the supplier's system. In each case the site wants the image to participate fully in Drupal's media system — searchable in the library, referenced from fields, usable in a WYSIWYG, subject to media access — while the bytes stay where they are. This module supplies that source, storing a link and treating it as media, depending on core `link` and `media`. Version **8.x-1.2-beta2**, a beta, on a core range spanning `^8` through `^11`. What is given up is worth naming, because it is more than it first appears. **Image styles need the file**, so derivatives, responsive images and cropping either do not apply or require fetching the remote file anyway. **Availability is someone else's**, so a broken remote URL is a broken image on your page with no local fallback, and the failure is silent until someone looks. And **fetching remote URLs on the server side deserves care**: any feature that resolves a user-supplied URL from the server — for a dimension check, a thumbnail or a proxy — is an SSRF surface, so confirm whether the module fetches at all and, if it does, whether internal addresses are excluded.

---

- Reference images from a DAM.
- Use a partner's hosted imagery.
- Avoid duplicating a supplier's photos.
- Keep image storage outside Drupal.
- Reference a CDN-hosted image.
- Add remote images to the media library.
- Use externally licensed imagery.
- Reference a product catalogue's photos.
- Avoid a second copy of an asset.
- Keep assets under another team's control.
- Use images from a shared repository.
- Reduce site storage requirements.
- Reference stock imagery by URL.
- Keep a single source of truth for photos.
- Add remote images to a WYSIWYG.
- Use images from a sister site.
- Support a federated asset strategy.
- Reference images from an API feed.
