<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Dblog Time (dblog_time) — agent index

Adds **time display options** to `/admin/reports/dblog`. No dependencies, no permissions of its own
— access to the log remains core's `access site reports`. Version **1.0.4**.
Core requirement `^10 || ^11`.

**What it fixes:** dblog formats times with the site's *medium* date format — typically **minute
precision**. When four entries share a minute, the **sequence** is exactly the information being
sought (which query ran before which error; did cron precede the failure) and the display throws it
away. Sub-second precision matters more still for correlating with a web-server access log or an
APM trace, where a second's ambiguity matches the wrong request.

**Two related notes:**
- **Timezone is the other half.** dblog renders in the **viewing user's** timezone, so a developer
  in one country and a server in another produce timestamps that do not obviously line up with
  `/var/log`. Knowing whether the displayed time is local or UTC is a prerequisite for correlating
  anything.
- **dblog is a poor long-term logging destination** regardless of formatting — it writes to the
  database on the request path and is capped by row count. Real diagnosis is better served by
  `syslog` or a shipped log, with dblog kept for convenience.
