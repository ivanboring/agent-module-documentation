<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AbuseIPDB integrates the AbuseIPDB IP-reputation service — reporting malicious IPs to it and banning IPs based on its data, with core-ban and advban integration submodules.

---

AbuseIPDB is a crowd-sourced database of malicious IP addresses. This module connects Drupal to it two ways: reporting IPs that misbehave on the site, and banning IPs based on AbuseIPDB's reputation data, via `abuseipdb_core_ban` (core Ban module) and `abuseipdb_advban` (Advanced Ban) submodules. It is a security/abuse-mitigation tool. It needs an AbuseIPDB API key (a credential to keep out of plain config). Two operational cautions apply to any reputation-based blocking: false positives can lock out legitimate users (shared/CGNAT IPs, VPN exits), so review what gets auto-banned; and reporting IPs sends data to a third party, which for logged-in-user IPs has a privacy dimension. Used judiciously it adds a real layer against known-bad traffic.

---

- Ban IPs by reputation.
- Report malicious IPs.
- Integrate AbuseIPDB.
- Block known-bad traffic.
- Use core Ban integration.
- Use Advanced Ban integration.
- Keep the API key secure.
- Review auto-bans for false positives.
- Consider CGNAT/VPN false positives.
- Note reporting sends IP data externally.
- Add an abuse layer.
- Check the reputation of an IP.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.