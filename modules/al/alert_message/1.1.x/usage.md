<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Alert message provides site-wide alert banners as entities, with scheduling, so an announcement can be prepared, timed and retired without a deployment.

---

Every organisation needs this and most build it badly. A service outage, a weather closure, a deadline, a security notice, a change of opening hours — each needs to appear across the site quickly, be visible without being dismissible into invisibility, and go away on its own. The usual implementations are a custom block someone edits and forgets to remove, a node with a view and a set of conditions, or a hard-coded banner requiring a deployment. Modelling alerts as entities with a start and end time fixes the part that actually goes wrong, which is not putting the alert up but taking it down: a banner that outlives its cause trains visitors to ignore banners, so the next real one is not read. Version **1.1.1** on **`^11.1`** — Drupal 11.1 or later only, a tight requirement — depending on the contrib `entity` module and core `text`, `datetime` and `block`. Three things to get right. **Scheduling is cron-driven**, so an alert scheduled to appear at nine appears when cron next runs, which for an emergency notice is the wrong granularity — a genuinely urgent alert needs a manual switch as well. **A banner is an accessibility surface**: it should be announced rather than merely rendered, dismissible without being permanently hidden if it still applies, and legible at the top of the reading order rather than visually first and last in the DOM. And **caching decides whether it appears at all** — a site-wide banner on a page-cached site needs its cache tag invalidated when an alert starts or ends, or the alert exists and nobody sees it.

---

- Announce a service outage.
- Post a weather closure notice.
- Schedule a deadline reminder.
- Show a security notice site-wide.
- Announce changed opening hours.
- Retire a banner automatically.
- Prepare an alert in advance.
- Show a maintenance window notice.
- Announce an event cancellation.
- Post a public health notice.
- Show a payment system outage.
- Schedule a seasonal announcement.
- Warn about a phishing campaign.
- Announce a site migration.
- Post an emergency notice.
- Show a temporary policy change.
- Announce a new service.
- Schedule a term-start message.
