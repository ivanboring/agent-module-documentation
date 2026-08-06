<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
BrightEdge Autopilot integrates the Instant eXperience Framework, which fetches BrightEdge-managed content ("capsules") server-side and injects it into pages so that SEO changes can be made from BrightEdge rather than in Drupal.

---

The IXF model is that an SEO team manages page-level content — link modules, meta changes, structured blocks — in BrightEdge, and the site pulls it in at render time. This module supplies the Drupal side: a `BrightEdgeService` and factory around the IXF SDK, an `IXFContentBlock` for placing capsules, an admin form for the account and connector settings, and a `RedirectHTTPHeaders` event subscriber.

Three things are worth being explicit about with any server-side content-injection integration, because they are the same three every time.

**It is a live dependency on a third party in the render path.** If BrightEdge is slow or unreachable, page rendering waits on it. Check what timeout and failure behaviour the SDK is configured with before this goes on a high-traffic template, and satisfy yourself that a vendor outage degrades rather than blocks.

**Content injected server-side is content you did not review.** Whatever BrightEdge returns is rendered as part of your page under your domain. That is the intended behaviour, but it means the trust boundary now includes the vendor account — anyone who can publish a capsule can publish on your site.

**The settings route is guarded by `_permission: 'administer'`, which is not a permission that exists.** Verified: it is absent from the site's permission list. As with any undefined permission this fails closed — `hasPermission()` returns TRUE only for roles flagged `is_admin` — so the form is reachable by administrators and nobody else. The practical effect is that the setting cannot be delegated to an SEO role, and the intended access model was never exercised.

---

- Inject BrightEdge-managed SEO content into pages.
- Let an SEO team publish changes without a deployment.
- Place a BrightEdge capsule as a block.
- Add managed internal links to templates.
- Serve SEO content server-side rather than by JavaScript.
- Connect a Drupal site to a BrightEdge account.
- Configure the IXF connector from the admin form.
- Control which pages carry capsules.
- Review what a vendor is injecting into your pages.
- Check the SDK's timeout before a high-traffic rollout.
- Plan for graceful degradation when the vendor is unreachable.
- Audit an inherited site's BrightEdge configuration.
- Understand why the settings page cannot be delegated.
- Decide whether server-side injection is acceptable for your risk model.
- Confirm the vendor account's publishing controls.
- Review injected markup during a security audit.
