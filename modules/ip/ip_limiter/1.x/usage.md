<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
IP Limiter bans IP addresses that spam or abuse the site for a configurable amount of time, an automated temporary-ban abuse control.

---

Repeated abusive requests from an IP — spam submissions, brute-force attempts — warrant a temporary block. IP Limiter bans such IPs for a configurable duration automatically. It is an abuse-mitigation tool. The cautions are the standard rate-limiting ones: false positives can block legitimate users behind shared IPs (CGNAT, corporate NAT, VPN), so tune the thresholds and ban duration to avoid locking out real users, and remember an IP ban is a blunt instrument (it blocks everyone behind that IP). Behind a reverse proxy/CDN, ensure the real client IP is being used (see trusted-proxy configuration) or the module may ban the proxy. Used with sensible thresholds it blunts automated abuse.

---

- Ban abusive IPs temporarily.
- Block spamming IPs.
- Rate-limit by IP.
- Auto-ban brute-force attempts.
- Set a ban duration.
- Tune thresholds to avoid false positives.
- Consider shared-IP users.
- Use the real client IP behind a proxy.
- Blunt automated abuse.
- Configure the ban window.
- Block repeat offenders.
- Avoid locking out legitimate users.
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