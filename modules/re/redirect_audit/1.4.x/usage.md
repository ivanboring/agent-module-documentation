<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Redirect Audit checks a site's redirects for problems — targets that no longer resolve, chains, loops — and reports them on a dashboard, so a redirect table accumulated over years can be reviewed rather than trusted.

---

Redirects are written once and never looked at again, which is how a site ends up with redirects pointing at pages that were later deleted, chains three hops long that cost every visitor an extra round trip, and loops that fail outright. None of that is visible from Redirect's own listing, which shows source and destination without checking whether the destination works. This module adds the checking: `RedirectAuditBatch` runs the audit in batches (necessary, since auditing thousands of redirects means thousands of checks), a dashboard at `/admin/config/search/redirect/audit` presents the results with its own stylesheet, and a settings form controls what is checked. Both routes sit behind the module's own `administer redirect audit` permission. It depends on `redirect ^1.0`, with core `^10 || ^11`. Two operational notes: auditing makes requests, so a large redirect table means a lot of traffic and the batch size matters; and results are a snapshot, so scheduling matters more than running it once — a redirect that worked at audit time can break the following week when its target is unpublished.

---

- Find redirects pointing at deleted pages.
- Detect redirect chains costing extra round trips.
- Identify redirect loops.
- Audit a redirect table accumulated over years.
- Review redirects before a site migration.
- Report broken redirects to an SEO team.
- Check redirects after a content restructure.
- Prioritise which redirects to fix.
- Monitor redirect health on a schedule.
- Reduce unnecessary hops for visitors.
- Clean up after a bulk redirect import.
- Verify redirects created by a migration.
- Improve crawl efficiency.
- Find redirects to external sites that moved.
- Batch-audit a large redirect table.
- Restrict audit access by permission.
- Support an SEO health check.
- Evidence redirect coverage for a stakeholder.
