<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Front Page (front) — agent index

**Machine name `front_page`.** Role-based front pages (redirect or render an alternative per role).
Version **10.0.0-beta1**. Core `^10 || ^11`. Permission `administer front page`.

Send anonymous → a marketing page, members → a dashboard, editors → a work queue. Configure per
role. When it redirects, the target is admin-configured (not request-derived), so it is not an
open-redirect surface.