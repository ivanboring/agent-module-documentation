<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Imperva Cache Purger integrates Imperva CDN cache purging with the Purge module, so Drupal cache invalidations propagate to the Imperva edge.

---

When content changes behind an Imperva CDN, the edge cache must be purged or visitors see stale pages. Imperva Cache Purger is a Purge-module purger that sends invalidations to Imperva's API. It needs Imperva API credentials — a credential to keep out of plain config (a Key entity / environment). It slots into the Purge pipeline like any purger. The security note is simply the credential: the Imperva API key can purge (and, depending on scope, reconfigure) your CDN, so protect it accordingly.

---

- Purge the Imperva CDN cache.
- Propagate invalidations to Imperva.
- Integrate Imperva with Purge.
- Avoid stale edge pages.
- Configure Imperva API credentials.
- Keep the Imperva key secure.
- Purge on content change.
- Use in the Purge pipeline.
- Invalidate the edge cache.
- Protect the CDN credential.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep setup minimal.
- Verify theme fit.
- Audit access.
- Match your use case.
- Confirm compatibility.