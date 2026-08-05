<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Varnish File Purge invalidates cached files in Varnish when a file is replaced at a URL that does not change.

---

Drupal's cache invalidation works on tags, and files sit outside that model. When an editor replaces a PDF, an image or a document while keeping the same filename — which is what "replace this file" means to everyone who is not a developer — the URL is identical, so Varnish keeps serving the old bytes until the object expires. The symptoms are familiar and hard to diagnose from the Drupal side: the tender document still shows last month's version, the logo that was updated yesterday is unchanged for some visitors and not others, and the site's own cache report shows nothing wrong because Drupal did invalidate what it knows about. Version **1.1.4** on core `^10 || ^11`, in the Purge family, so it works with the `purge` framework's queue and processors rather than issuing requests directly. Two things worth attaching. **Drupal usually avoids the problem by changing the URL** — image style derivatives carry an `itok`, and many file fields produce a new filename on replacement — so establish first whether the site actually keeps URLs stable, because if it does not, this is solving a problem it does not have. And **the same issue exists one layer further out**: a CDN in front of Varnish caches the same object under the same URL, so purging Varnish alone leaves the stale copy at the edge, and a complete solution names every cache between the file and the reader.

---

- Purge a replaced PDF from Varnish.
- Invalidate a file whose URL is unchanged.
- Fix a stale document after replacement.
- Update a logo across all visitors.
- Purge media files on save.
- Fix "the old version is still showing".
- Invalidate a replaced image.
- Support an editorial file-replacement workflow.
- Purge a downloadable form's cache.
- Fix a stale price list.
- Invalidate a replaced attachment.
- Support a Varnish-fronted site.
- Purge files from a reverse proxy.
- Fix inconsistent file versions between visitors.
- Support a document-heavy site.
- Invalidate a replaced brochure.
- Purge on media entity update.
- Support a compliance document update.
