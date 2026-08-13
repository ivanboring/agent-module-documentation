<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bot Blocker rejects HTTP requests from clients it identifies as scraping bots or dangerously outdated browsers, based purely on the User-Agent header, before Drupal does real page work.

---

It exists to shed abusive crawling/scraping traffic and requests from obsolete browsers (often automation or attack tooling), improving performance — hence its "Performance and scalability" package. It performs no CAPTCHA, no challenge, and no rate-limiting: it is a pure allow/deny gate. Mechanically it works through a single `KernelEvents::REQUEST` subscriber (`BotBlockerEventSubscriber`, priority 101, main-request only): it allows anyone with the `bypass bot blocker` permission, loads `bot_blocker.settings`, blocks if the lowercased UA contains any configured banned substring (case-insensitive, defaults `Scrapy`, `HTTrack`, `Go-http-client`), and otherwise regex-extracts the major version of Chrome/Firefox/Safari/Edge/Opera/IE and blocks if it is `<=` the configured minimum for that family. Blocked requests get a configurable HTML body with either HTTP 403 Forbidden or 410 Gone, then propagation stops.

Detection is UA-string-based only — no IP lists, no reverse DNS, and no remote/downloaded bot list (it makes no outbound HTTP). It records simple `blocked_requests` / `allowed_requests` counters and a `last_blocked_request` record, but only when a fast cache backend (memcache or redis) is present; with the default database cache no metrics are recorded. Note two quirks: only the first matching browser-family regex is evaluated (`break` after first match), and any spoofed or absent UA trivially bypasses filtering — expected limitations of UA-based blocking. Typical setup: enable the module, visit `/admin/config/system/bot-blocker`, edit the banned-substring list, set minimum browser versions, customize the blocked-response HTML, and periodically raise the version floors as browsers age (a too-high floor can block legitimate users).

---

- Enable the module to gate all main requests by User-Agent.
- Configure blocking at `/admin/config/system/bot-blocker`.
- Add `Scrapy` to the banned-substring list to block that scraper.
- Add `HTTrack` to block site-mirroring tools.
- Add `Go-http-client` to block default Go HTTP traffic.
- Add `python-requests` or `curl` to block scripted clients.
- Add a custom bad-bot UA substring observed in your logs.
- Remove a substring that is causing false positives.
- Set a Chrome minimum version to block ancient Chrome builds.
- Set the IE minimum high to block all Internet Explorer.
- Leave a browser field blank to stop filtering that family.
- Raise Firefox/Safari/Edge/Opera floors as versions age.
- Toggle "Return HTTP 410 Gone" to signal permanent removal to crawlers.
- Keep the default 403 Forbidden response for denied requests.
- Customize the blocked-request HTML shown to bots.
- Grant `bypass bot blocker` to trusted roles (uptime/monitoring bots).
- Grant `administer bot blocker` to a site-admin role.
- Exempt an internal QA account so old-browser testing isn't blocked.
- Install memcache or redis to enable block/allow metric counters.
- Read the `bot_blocker.blocked_requests` counter to gauge volume.
- Read `bot_blocker.last_blocked_request` for the last block's ip/path/UA.
- Export `bot_blocker.settings` config across environments.
- Verify blocking with `curl -A Scrapy https://site` expecting 403/410.
- Periodically increment browser-version floors per the README guidance.
