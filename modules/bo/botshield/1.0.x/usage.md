<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
BotShield provides bot classification, rate limiting, blocking, geo enrichment, and reporting for Drupal 10/11.

---

BotShield provides application-layer bot defense — classifying bots (good vs bad), rate-limiting and
blocking abusive traffic, enriching requests with geo data, and reporting on the activity, to reduce
scraping/abuse/attack traffic. It is configured at `botshield.settings`, provides its own permissions, in the
Security package.

Use it to detect and throttle/block abusive bots. This is a **security-positive** feature (bot mitigation).
Set expectations correctly, as with any app-layer protection: it acts once the request reaches Drupal, so it
mitigates application-layer bot abuse but cannot stop a true network/volumetric flood (use a CDN/WAF for
that); it blocks/rate-limits by **client IP** (and geo), so behind a reverse proxy ensure the **real client
IP** is used (trusted-proxy configuration) and be aware IP rotation can evade it. It has no access-control
role beyond its permission. Configure the classification, rate limits and blocking.

---

- Classify bots (good vs bad).
- Rate-limit and block abusive traffic.
- Enrich requests with geo data.
- Report on bot activity.
- Configure at botshield.settings.
- Provide its own permissions.
- Mitigate application-layer bot abuse.
- Use a CDN/WAF for network/volumetric floods.
- Ensure the real client IP behind a proxy.
- Be aware IP rotation can evade it.
- Have no access-control role beyond permission.
- Configure classification/limits/blocking.
- Throttle abusive bots.
- Block bad bots.
- Handle bot defense.
- Configure rate limits.
- Handle bot mitigation.
- Reduce scraping/abuse.
- Configure blocking.
- Defend against bots.
