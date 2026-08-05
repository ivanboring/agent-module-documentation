<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Request Data Conditions adds condition plugins that test the incoming request — a cookie, an HTTP header, a query parameter or a session value — so block visibility and anything else built on Drupal's condition system can respond to request state rather than only to path and role.

---

Drupal's condition plugin system underpins block visibility, and core ships the obvious conditions: request path, content type, user role, language. What it does not offer is any way to say "show this block when the `campaign` query parameter is set", or "when this cookie is present", or "when a session flag was set earlier in a flow". This module fills that gap with four condition plugins in `src/Plugin`, and because they are ordinary conditions they work anywhere conditions are consumed — block layout most obviously, but also Context, Page Manager and any custom code using the condition manager. The module is four files plus an install file, with no routes, permissions, configuration page or dependencies, and core `^9.3 || ^10 || ^11`. Two things deserve care in use. Cache: conditions that vary on request data need the right cache contexts, or a page cached for one visitor is served to another with the wrong blocks — check behaviour under page cache before relying on it anonymously. Trust: cookies, headers and query parameters are all attacker-controlled, so these conditions are for *presentation*, never for access control.

---

- Show a block only when a query parameter is present.
- Vary content on a marketing campaign cookie.
- Show a banner to visitors arriving from a specific referrer header.
- React to a session flag set earlier in a flow.
- Display a debug block when a header is set.
- Target a block at traffic from a load balancer header.
- Hide a block once a dismissal cookie exists.
- Show onboarding only during a session.
- Test a variant behind a query parameter.
- Combine request conditions with role conditions.
- Drive a Context reaction from a cookie.
- Show a notice to users with a preference cookie.
- Support an A/B test's presentation layer.
- Reveal a preview block via a header.
- Personalise a region without a personalisation suite.
- Reuse conditions across block and Context.
- Show a locale banner from a geo header.
- Gate a promotional block on a campaign parameter.
