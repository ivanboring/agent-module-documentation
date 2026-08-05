<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Shy One-Time (shy_one_time) — agent index

Stops crawlers/scanners consuming **password-reset and one-time login links** before the recipient
clicks. Settings at `/admin/config/system/shy_one_time` behind `administer site configuration`.
Version **2.0.4**. Core requirement `^9.5 || ^10 || ^11`.

Mechanism — `ShyEventSubscriber` on `KernelEvents::REQUEST`, scoped to `user.reset` and
`user.reset.login`:
- `CrawlerDetect` matches → `AccessDeniedHttpException`;
- configured User-Agent matches → 302 to `/user/login`.
Either way the token is **not** consumed.

**Say this plainly when recommending it — it is a trade, not a fix:**
- a link that survives a third-party fetch is a link **that third party can still use**. Single-use
  is what limits the damage when a reset URL leaks (shared inbox, forwarded mail, proxy log);
- the exempt class is defined by a **spoofable header**, so it gives no assurance about who
  actually fetched the link;
- **a user whose real browser UA matches a configured pattern can never complete their reset** —
  keep the pattern list narrow and specific.

**Logging flaw (verified live).** The subscriber runs *before* access checks and logs the raw
`User-Agent` **concatenated into the message string** rather than through the `@user_agent`
placeholder it also passes. That is unauthenticated attacker-controlled markup rendered at
`/admin/reports/dblog` — core's `Xss::filterAdmin()` strips `<script>`/`onerror`, but `<img>`,
`<b>` and `<a href>` survive, so an admin viewing the log fires a beacon and sees a phishing link.
It also writes one `notice` per request to the reset route, at request rate, from anonymous.
Fix: `->notice('User-Agent | @user_agent', ['@user_agent' => $ua])`.
