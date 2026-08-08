<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AbuseIPDB (abuseipdb) — agent index

Integrates the **AbuseIPDB** IP-reputation service — report malicious IPs and ban by reputation.
Version **3.0.0**. Submodules `abuseipdb_core_ban` (core Ban), `abuseipdb_advban` (Advanced Ban).

**Creds:** AbuseIPDB API key (keep out of plain config). **Cautions:** reputation blocking has false
positives (shared/CGNAT/VPN IPs) — review auto-bans; reporting sends IP data to a third party
(privacy dimension for user IPs).