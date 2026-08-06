<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Turnstile Protect (turnstile_protect) — agent index

Puts chosen **routes** behind a **Cloudflare Turnstile** challenge for anonymous visitors, with a
rate limit and a verified-crawler allow-list. Requires `captcha` and `turnstile`. Challenge form at
`/challenge`; settings under the CAPTCHA admin. Version **1.0.5**.
Core requirement `^10 || ^11`.

**The problem is load, not spam.** A CAPTCHA on a *form* does not help when the cost is in the
**GET** — a search page, a faceted listing or an expensive view hit thousands of times a day is a
performance incident that looks like traffic. Turnstile suits this because it is usually
**invisible**, verifying in the background.

**The bot allow-listing is done properly and deserves credit.** Rather than trusting a User-Agent
claiming to be Googlebot, it does **forward-confirmed reverse DNS** — `gethostbyaddr()` on the
client IP, `gethostbyname()` back, and requires a match — which is the technique the search engines
themselves document. The code comment says so.

**Two operational points:**
1. **The client IP must be right.** Behind a CDN, `getClientIp()` returns the **proxy** unless
   `reverse_proxy` is set in `settings.php` — a protection module working from the wrong address
   either challenges everyone or rate-limits the whole site as one visitor.
2. **Two blocking DNS lookups per unmatched request**, on exactly the routes under load when this
   matters. Measure it, and cache.

Session flag `turnstile_protect_pass` bypasses once solved. Authenticated users are never challenged.
