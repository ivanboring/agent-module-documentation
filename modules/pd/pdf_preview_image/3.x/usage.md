<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
PDF Preview Image auto-generates a preview image of a PDF's first page into a configured image field.

---

A document library looks better with cover thumbnails than generic file icons. PDF Preview Image generates a preview image of a PDF's first page into an image field automatically. It needs a PDF-rendering toolkit (ImageMagick/Ghostscript) on the server. It is a media enhancement with no unusual security surface — it rasterises PDFs the site already stores. Confirm the toolkit is present and that generating previews for large/malicious PDFs is bounded (a rendering toolkit processing untrusted PDFs should be reasonably current, since PDF/image parsers have had vulnerabilities).

---

- Generate a PDF cover thumbnail.
- Preview a PDF's first page.
- Auto-create document thumbnails.
- Store the preview in an image field.
- Improve a document library.
- Require an image toolkit.
- Show a document cover.
- Bound preview generation.
- Keep the toolkit current.
- Rasterise a PDF page.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.
- Use deliberately.
- Review after upgrades.