<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Database logging ban operation lets an administrator ban the IP address that caused a log message.

---

Database logging ban operation adds an admin action to the Database Logging (dblog) report — letting an
administrator **ban the IP address** associated with a log entry (via core's Ban / `ban.ip_manager`), so an
IP seen causing errors/attacks in the log can be blocked in a couple of clicks. It requires PHP 7.3, provides
its own permissions, in the User interface package.

Use it to quickly ban abusive IPs from the log. This is a **security-positive** incident-response convenience
(respond to an attacking/erroring IP straight from the log). Caveats for IP banning generally apply: behind a
reverse proxy/CDN, ensure the log records the **real client IP** (trusted-proxy configuration) so you ban the
right address, and be mindful of banning **shared/dynamic IPs** (collateral impact) — treat IP bans as a
blunt, temporary measure. It relies on core Ban for enforcement, and its permission gates who can ban. It has
no other access-control role. Use the ban operation from the log report.

---

- Ban the IP from a log entry.
- Add a ban action to the dblog report.
- Use core Ban (ban.ip_manager).
- Require PHP 7.3.
- Provide its own permissions.
- Respond to abusive IPs from the log.
- Ensure the log records the real client IP (trusted proxy).
- Be mindful of banning shared/dynamic IPs.
- Treat IP bans as a blunt/temporary measure.
- Rely on core Ban for enforcement.
- Gate who can ban by permission.
- Have no other access-control role.
- Ban attacking IPs quickly.
- Use the ban operation.
- Block IPs from logs.
- Handle incident response.
- Ban from the log.
- Configure the permission.
- Restrict who can ban.
- Ban IPs.
