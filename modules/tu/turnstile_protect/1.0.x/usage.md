<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Turnstile Protect puts chosen routes behind a Cloudflare Turnstile challenge for anonymous visitors, with a rate limit and an allow-list for verified crawlers.

---

The problem it addresses is not spam submission but load. A search page, a faceted listing or an expensive view is a route that costs the site real work per request, and a scraper or an aimless bot hitting it thousands of times a day is a performance incident that looks like traffic. Putting a CAPTCHA on the *form* does not help, because the cost is in the GET; putting the challenge on the *route* does. Turnstile is the right challenge for this because it is usually invisible — it verifies in the background and only presents an interaction when something looks wrong — so the cost to a real visitor is close to nothing. Version **1.0.5** on core `^10 || ^11`, requiring `captcha` and `turnstile`, with a `/challenge` route and settings under the CAPTCHA administration. **The bot allow-listing is done properly and deserves credit**: rather than trusting a User-Agent claiming to be Googlebot, it performs a **forward-confirmed reverse DNS** check — resolve the client IP to a hostname, resolve that hostname back, and require the two to match — which is the technique the search engines themselves document, and the code says so. Two operational points follow. **The client IP must be right**: behind a CDN, `getClientIp()` returns the proxy unless `reverse_proxy` is configured in `settings.php`, and a protection module working from the wrong address either challenges everyone or rate-limits the whole site as one visitor. And **it performs two blocking DNS lookups per unmatched request**, on exactly the routes that are under load when this matters — worth measuring, and worth caching.

---

- Protect a search page from scrapers.
- Put an expensive view behind a challenge.
- Reduce bot load on a faceted listing.
- Challenge anonymous visitors on a route.
- Allow verified search-engine crawlers through.
- Rate-limit anonymous requests.
- Protect an API-like route from abuse.
- Reduce server load from automated traffic.
- Add an invisible challenge to a page.
- Protect a directory from harvesting.
- Block crawlers from parameterised URLs.
- Stop content scraping.
- Reduce infrastructure cost from bots.
- Protect a login page from automation.
- Allow-list a monitoring service's IP.
- Challenge before an expensive query runs.
- Protect a public dataset page.
- Reduce noise in analytics from bots.
