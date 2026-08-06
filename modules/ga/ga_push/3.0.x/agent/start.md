<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Google Analytics Push (ga_push) — agent index

Sends **events to Google Analytics from Drupal**, with an API other modules can call. Settings
behind `admin ga push`. Version **3.0.0-alpha1** — **alpha**. Core requirement `^10.3 || ^11`.

**The gap it fills:** page-view analytics answers *where people went*, not *what happened*. The
events that matter are usually **server-side facts** — a form passed validation, an order completed,
a search returned nothing. Some can be inferred badly from a thank-you URL; others **cannot be seen
from the browser at all**, because the browser knows what it sent, not what the server decided.

**Three things to attach:**
1. **Server-side events bypass the visitor's controls** — no browser request for an ad blocker to
   stop. **If the visitor declined tracking, the site must not send the event**, and that is a
   decision **in code**, not a script the consent manager withholds. (Same as
   `meta_conversions_api`, wave 75.)
2. **Event data is data leaving the site.** An event carrying an order value, an email address or a
   **search term** has sent that to Google — search terms are notorious for containing things
   visitors did not mean to publish.
3. **GA4's model is events throughout**, having replaced category/action/label entirely. Check which
   shape the module produces against what the property expects — a mismatch yields events that
   arrive and **cannot be reported on**.
