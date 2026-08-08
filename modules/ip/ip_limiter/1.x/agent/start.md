<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# IP Limiter (ip_limiter) — agent index

Temporarily **bans abusive/spamming IPs** for a configurable duration. Version **1.0.0-alpha3**.

**Cautions:** false positives on shared IPs (CGNAT/NAT/VPN) — tune thresholds; behind a proxy/CDN
ensure the **real client IP** is used (trusted-proxy config) or it bans the proxy. Blunt instrument
(blocks everyone behind an IP).