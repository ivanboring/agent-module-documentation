<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Alert message (alert_message) — agent index

Site-wide **alert banners as entities**, with **scheduling**. Depends on contrib `entity` and core
`text`, `datetime`, `block`. Version **1.1.1**.
**Core requirement `^11.1` — Drupal 11.1+ only**, tight.

**Scheduling fixes the part that actually goes wrong**, which is not putting the alert up but
**taking it down**. A banner that outlives its cause trains visitors to ignore banners, so the next
real one is not read. The usual implementations — a custom block someone forgets, a node plus a
view plus conditions, a hard-coded banner needing a deployment — all fail there.

**Three things to get right:**
1. **Scheduling is cron-driven.** An alert set for nine appears when **cron next runs** — the wrong
   granularity for an emergency. A genuinely urgent alert needs a **manual switch** as well.
2. **A banner is an accessibility surface** — announced rather than merely rendered; dismissible
   without being permanently hidden if it still applies; **legible at the top of the reading order**,
   not visually first and last in the DOM.
3. **Caching decides whether it appears at all.** On a page-cached site the banner's **cache tag
   must be invalidated** when an alert starts or ends, or the alert exists and nobody sees it.
