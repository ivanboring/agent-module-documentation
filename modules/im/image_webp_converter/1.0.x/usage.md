<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Image WebP Converter converts images already uploaded to a site into WebP, rewriting the stored filenames and the references that point at them.

---

WebP is typically twenty-five to thirty-five percent smaller than an equivalent JPEG at the same visual quality, and images are the majority of most pages' weight, so converting an existing library is one of the larger performance wins available without redesigning anything. Drupal can already produce WebP **derivatives** through image styles, which covers rendered images and leaves the originals as they were — that is the right approach for most sites and is not what this module does. This converts the **source** files and updates references, which is the heavier operation: it reduces stored size as well as delivered size, and it is not reversible. Version **1.0.1** on `^10 | ^11` — note the single pipe, which is not valid Composer OR syntax and is worth checking behaves as intended — with a `convert images to webp` permission and a restricted administrative one. Three things to plan before running it. **It rewrites references, which means editing content**, so take a database backup and run it on a copy first; a conversion that misses a reference leaves a broken image, and one that rewrites a reference it should not have leaves a wrong one. **Originals are the archive**: an uploaded photograph is often the only copy the organisation has, so converting rather than deriving discards the original quality permanently — decide whether that is acceptable per field rather than site-wide. And **externally held URLs do not update**: anything that linked directly to an image file — an email, a PDF, another site, a search index — points at a filename that no longer exists.

---

- Convert an existing image library to WebP.
- Reduce stored image size.
- Improve page weight on an established site.
- Convert images after a migration.
- Reduce storage costs for images.
- Improve Core Web Vitals scores.
- Convert product photography in bulk.
- Reduce CDN transfer volume.
- Modernise an older site's images.
- Improve mobile load times.
- Convert a media library to WebP.
- Reduce backup size.
- Improve a Lighthouse image audit.
- Convert images referenced in content.
- Reduce bandwidth on an image-heavy site.
- Support a performance programme.
- Convert uploads in a batch.
- Update references after conversion.
