<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Database logging ban operation (dblog_ban) — agent index

Adds an operation to **ban the IP address that caused a log message** (via core **Ban**/`ban.ip_manager`) —
respond to abusive IPs from the dblog report. Requires PHP 7.3; provides permissions. Version **2.0.3**. Core
`^9.4||^10||^11`.

**Security-positive** incident-response convenience. **Caveats:** behind a proxy/CDN ensure the log has the
**real client IP** (trusted-proxy) so you ban the right one; mind **shared/dynamic IPs** (collateral). Relies
on core Ban for enforcement; permission gates who can ban.
