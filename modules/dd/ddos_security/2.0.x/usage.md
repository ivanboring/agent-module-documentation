<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DDoS Security tracks request rates per IP and blocks IPs that exceed a threshold, as an application-layer abuse mitigation.

---

DDoS Security provides application-layer abuse mitigation — a request event subscriber that counts
requests per client IP and blocks IPs that exceed a configured threshold, with an admin UI to view/search/
export blocked IPs and a block/alert message for blocked visitors. It depends on core User, is configured
under `/admin/config/ddos-security`, in the Security package.

Use it to throttle/block abusive IPs at the application layer. **Set expectations correctly: this is
app-layer rate-limiting, not true (network/volumetric) DDoS protection.** By the time a request reaches this
PHP code, Drupal has already bootstrapped and consumed resources, so it cannot stop a real volumetric DDoS —
that requires an upstream/network layer (CDN, WAF, provider scrubbing). It helps against application-layer
abuse from identifiable IPs (aggressive scraping, brute-force floods). Two things to keep correct: it blocks
by **client IP**, so behind a reverse proxy/CDN ensure the **real client IP** is used (trusted-proxy /
`X-Forwarded-For` configuration) — otherwise it may block the proxy or an attacker may spoof/rotate IPs to
evade or to frame others; and its admin/report routes are correctly gated by `administer site configuration`
(no public IP-list disclosure). Configure the threshold and block behaviour.

---

- Rate-limit/block abusive IPs.
- Count requests per client IP.
- Block IPs over a threshold.
- Provide an admin IP block/search/export UI.
- Depend on core User.
- Show a block message to blocked visitors.
- KNOW it is app-layer, NOT network DDoS protection.
- Understand it can't stop volumetric DDoS.
- Use a CDN/WAF for real DDoS protection.
- Ensure the real client IP is used behind a proxy.
- Configure trusted-proxy/X-Forwarded-For.
- Be aware IP rotation/spoofing can evade it.
- Gate admin/report routes (administer site configuration).
- Configure the threshold.
- Mitigate application-layer abuse.
- Throttle aggressive scraping.
- Block brute-force floods.
- Configure block behaviour.
- Handle abusive IPs.
- Limit request rates.
