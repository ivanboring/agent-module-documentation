<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DDoS Security — agent index

**Application-layer IP rate-limiting/blocking** — counts requests per client IP, blocks over a threshold;
admin UI to view/search/export blocked IPs. Depends on core `user`. Config under `/admin/config/ddos-security`
(gated by `administer site configuration`). Version **2.0.0**. Core `^8||^9||^10||^11`.

**Set expectations:** this is **app-layer** mitigation, **NOT** true network/volumetric DDoS protection (the
request already reached PHP) — use a CDN/WAF for that. Blocks by **client IP** → behind a proxy, configure
trusted-proxy/XFF so the real IP is used (else block the proxy / attacker spoofs-rotates IPs to evade). No
access role.
