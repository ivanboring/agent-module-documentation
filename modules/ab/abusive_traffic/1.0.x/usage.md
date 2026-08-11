<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Abusive Traffic parses Apache logs to identify IPs hammering the site for banning.

---

Abusive Traffic **finds abusive IPs from Apache logs** — parsing Apache access-log files to identify IP
addresses making excessive requests, so admins can ban them. It works on core 10–11.

Use it to spot traffic abusers. It is a security/operations tool. Notes: it **reads server log files** (which
contain IP addresses/URLs = personal/operational data — gate the tool to trusted admins), and it only
*identifies* IPs — actually blocking them is a separate step (firewall, Ban module). It has no access-control role.
Configure the log parsing.

---

- Parse Apache access logs.
- Identify hammering IPs.
- Support banning abusers.
- Serve security/operations.
- Read server log files.
- Spot traffic abuse.
- READ log files (IPs/URLs = personal/operational data - gate to trusted admins).
- Only identify IPs (blocking is a separate step - firewall/Ban).
- Have no access-control role.
- Configure the log parsing.
- Handle abusive traffic.
- Find abusers.
- Configure the parsing.
- Identify IPs.
- Handle the logs.
- Detect abuse.
- Configure security.
- Handle the analysis.
- List IPs.
- Provide abuse detection.
