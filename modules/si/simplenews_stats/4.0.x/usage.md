<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Simplenews Stats measures what happens after a Simplenews newsletter is sent: it rewrites links so clicks can be counted and embeds a tracking image so opens can be counted, then reports the results per newsletter node.

---

The mechanism is the standard email-analytics one, implemented as two open routes. `/simplenews-image` serves the tracking pixel and `/simplenews-c/{tag}` receives a click and redirects onward; both are declared with `no_cache: TRUE` (a cached hit would count once and never again) and both require only `access content`, because the recipient opening the email is not an authenticated site visitor. `SimplenewsStatsAllowedLinks` constrains which URLs the click route will redirect to, which is what stops the redirector being usable as an open redirect. Results are stored in two entity types — a stats entity per mailing and a stats *item* per event — with their own storage handler, access control handler and view builders, and are surfaced at `/admin/content/simplenews-stats` and as a per-node tab at `/node/{node}/simplenews-stats`. The permission set is granular: `administer simplenews stats` (marked `restrict access: true`) is separate from `access simplenews stats overview`, from `access simplenews stats results`, and from `access simplenews stats results editable node`, which lets an author see figures only for newsletters they can edit. Two mail classes ship (`SimplenewsStatsMail` and `SimplenewsStatsMailSymfony`) so both the legacy and Symfony Mailer paths are covered. Worth stating plainly: open and click tracking is personal-data processing, and a site under GDPR needs a lawful basis and a privacy notice covering it. The release is `4.0.0-beta3` — beta, not stable.

---

- Measure open rates for a Simplenews newsletter.
- Count clicks on links inside a newsletter.
- Compare performance across several mailings.
- Show authors the figures for their own newsletters only.
- Report newsletter results from a node tab.
- Identify which articles drove the most traffic.
- Justify newsletter frequency with data.
- Track a call-to-action link separately.
- Restrict analytics administration to a trusted role.
- Keep newsletter statistics inside Drupal.
- Work with either legacy mail or Symfony Mailer.
- Limit click redirection to approved destinations.
- Give a marketing team a per-mailing dashboard.
- Retain per-event detail rather than only totals.
- Segment reporting by newsletter issue.
- Detect a mailing that failed to reach subscribers.
- Support an editorial review of newsletter content.
- Export newsletter performance for a report.
- Decide which subject lines perform best.
