<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cloudflare Worker Purge integrates cache purging with a Cloudflare Worker, so Drupal cache invalidations reach the Cloudflare edge via a Worker.

---

Behind Cloudflare, changed content must be purged from the edge. Cloudflare Worker Purge integrates with the Purge module to send invalidations through a Cloudflare Worker. It needs Cloudflare credentials (an API token / Worker configuration) — a credential to keep out of plain config, since a Cloudflare token can purge (and, depending on scope, reconfigure) your CDN. It slots into the Purge pipeline. Protect the credential and scope it minimally.

---

- Purge the Cloudflare edge.
- Integrate with a Cloudflare Worker.
- Propagate invalidations to Cloudflare.
- Avoid stale edge pages.
- Configure Cloudflare credentials.
- Keep the Cloudflare token secure.
- Scope the token minimally.
- Purge on content change.
- Use in the Purge pipeline.
- Protect the CDN credential.
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