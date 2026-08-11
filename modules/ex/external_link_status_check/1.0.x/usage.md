<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
External Link Status Check scans content for external links and reports broken ones.

---

External Link Status Check scans content for external links, checks their status, fetches metadata, and alerts on broken links — helping editors keep outbound links healthy. Results are shown in an admin report at `/admin/reports/external-links` with an export option.

The scan/report routes are admin-gated (under `/admin/reports` and `/admin/config`). Because it fetches external URLs server-side during scans, run scans on trusted content and be mindful of outbound requests. Depends on core `link` and `node`; supports Drupal 10 and 11.

---

- Monitor external links.
- Check link status.
- Fetch link metadata.
- Alert on broken links.
- Report at /admin/reports/external-links.
- Offer an export.
- Gate routes under admin paths.
- Fetch external URLs server-side.
- Run scans on trusted content.
- Mind outbound requests.
- Depend on core `link` and `node`.
- Support Drupal 10 and 11.
- Keep outbound links healthy.
- Aid editors.
- Scan content for links.
- Track broken links.
- Provide a link report.
- Export results.
