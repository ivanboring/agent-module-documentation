<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Redirect Audit (redirect_audit) — agent index

Audits redirects for broken targets, chains and loops, with a dashboard. Depends on
`redirect ^1.0`. Core requirement `^10 || ^11`.
Dashboard `/admin/config/search/redirect/audit`, settings `.../audit/settings` — both gated by
**`administer redirect audit`**.

Key facts:
- `src/RedirectAuditBatch.php` runs the audit through **Batch API** — necessary, since auditing a
  large redirect table means one check per redirect.
- **Auditing generates requests.** On a table with thousands of redirects that is real outbound
  (and inbound) traffic; tune the batch size, and prefer running it off-peak.
- Results are a **snapshot**. A redirect that resolved at audit time breaks when its target is
  later unpublished — schedule re-audits rather than treating one clean run as an answer.
- Its own permission rather than reusing `administer redirects`, so auditing can be delegated to
  an SEO role without granting redirect editing. Contrast `redirect_extensions` (wave 63), which
  reuses `administer redirects` and therefore widens what that permission can do.
