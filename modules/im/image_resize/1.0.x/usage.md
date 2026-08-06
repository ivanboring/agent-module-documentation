<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Image Resizer resizes uploaded images and converts them into other formats.

---

Editors upload what their camera or their designer gave them, which is routinely a 6000-pixel JPEG for a 400-pixel slot. Image styles handle the display size, but the original stays in the filesystem at full size, and on a site with years of uploads that is the bulk of the storage and the backups.

Resizing on upload addresses the source rather than the presentation. Format conversion addresses the other half: WebP and AVIF are substantially smaller than JPEG at equivalent quality, and converting on ingest means every derivative afterwards starts from the smaller file.

**Two things to settle before turning it on, because both are irreversible.** Resizing the original **discards pixels permanently** — if the site is also an archive, or if anyone might later need a print-resolution version, that decision cannot be undone from the resized file. Keeping originals elsewhere and resizing only what the web serves is the safe arrangement where it applies.

And **format conversion changes what a download gives people**. A visitor who downloads a photograph expects a file their software opens; AVIF is not universally supported outside browsers. Converting derivatives is generally safe, converting the stored original less so.

The release is **1.0.0-beta1** and it operates on files at upload time, so test it against a copy with representative images before pointing it at a production media library.

---

- Resize oversized images on upload.
- Stop 6000-pixel originals filling storage.
- Convert images to WebP.
- Reduce backup size for a media library.
- Start derivatives from a smaller source.
- Set a maximum dimension for uploads.
- Decide whether to keep originals.
- Preserve print-resolution masters elsewhere.
- Avoid discarding pixels irreversibly.
- Consider what a download gives visitors.
- Convert derivatives rather than originals.
- Test against representative images first.
- Evaluate a beta before production use.
- Audit a media library's storage footprint.
- Improve page weight from the source.
