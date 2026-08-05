<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LocalGov Login Redirect sends users somewhere useful after they log in, instead of to their own user profile page.

---

Drupal's default post-login destination is `/user/{uid}` — the account page — which is almost never where anyone wants to be. Editors want the content list, staff want a dashboard, members want the members' area. The usual fixes are a `?destination=` parameter (which only works if login was reached from the right place), a form alter, or an event subscriber written per project. This module makes it configuration: a settings form at `/admin/config/system/localgov_login_redirect` under `administer site configuration`, with the behaviour in `localgov_login_redirect.module` and configuration schema in `config/`. It depends only on core `user`, and core requirement is `^10.2 || ^11`. It comes from the LocalGov Drupal distribution, so it is maintained for UK council sites, but nothing about it is council-specific. Worth knowing that this is a well-populated niche — `login_destination` (a Varbase dependency, seen in wave 56) covers similar ground with per-role and per-condition rules — so the choice between them is about how much conditionality a site needs rather than about capability.

---

- Send editors to the content list after login.
- Redirect staff to a dashboard on login.
- Stop users landing on their profile page.
- Send members to a members' area.
- Configure the destination without custom code.
- Improve the first click after login.
- Direct new users to an onboarding page.
- Keep the destination in exportable configuration.
- Reduce support questions about "where do I go now".
- Send users to a specific view after login.
- Match login flow to an editorial workflow.
- Redirect to the front page instead of the profile.
- Support a council site's staff intranet.
- Change the destination without a deployment.
- Reduce clicks for frequent tasks.
- Give a single-purpose site a sensible landing page.
- Align login with a site's information architecture.
- Replace a bespoke form alter.
