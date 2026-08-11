<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Abusive Traffic — agent index

**Parses Apache log files to identify IP addresses hammering the site** (to ban). Version **1.0.2**. Core
`^10||^11`.

Security/operations — **reads server logs** (IPs/URLs; gate to trusted admins); only identifies IPs (blocking is a
separate step). No access role.
