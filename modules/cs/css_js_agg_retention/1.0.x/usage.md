<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CSS/JS Aggregate Retention prevents deletion of recent CSS/JS aggregates.

---

CSS/JS Aggregate Retention **prevents premature deletion of recent CSS/JS aggregate files** — keeping older
aggregates around for a retention window so that cached pages (CDN/browser) referencing a previous aggregate
don't hit **404s** for missing CSS/JS after an aggregate rebuild. It is in the Performance package.

Use it to avoid broken styling/scripts on cached pages after deployments/cache rebuilds. It is a
performance/operations feature affecting the assets directory; it has no content or access role. Configure the
retention window.

---

- Retain recent CSS/JS aggregates.
- Prevent premature aggregate deletion.
- Avoid 404s on cached pages.
- Keep old aggregates for a window.
- Serve performance/operations.
- Help after rebuilds/deploys.
- Affect the assets directory.
- Have no content/access role.
- Configure the retention window.
- Handle aggregate retention.
- Retain aggregates.
- Configure the retention.
- Keep aggregates.
- Handle the assets.
- Avoid 404s.
- Configure performance.
- Handle aggregation.
- Retain assets.
- Set the window.
- Provide aggregate retention.
