<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Dblog Time improves how timestamps are shown on Drupal's database log, so entries can be read at the precision debugging actually needs.

---

`/admin/reports/dblog` formats times with the site's medium date format, which typically means minute precision. That is fine for browsing and useless for the thing the log is most often opened for: establishing the order of events. When four entries share a minute, the sequence is exactly the information being sought — which query ran before which error, whether the cron run preceded the failure — and the display throws it away. Sub-second precision matters even more for correlating Drupal's log with a web server access log or an APM trace, where a second's ambiguity is enough to match the wrong request. This module adds those options, version **1.0.4** on core `^10 || ^11`, with no dependencies and no permissions of its own — it changes a display, and access to the log remains core's `access site reports`. Two related notes. **Timezone is the other half of the problem**: dblog renders in the viewing user's timezone, so a developer in one country and a server in another produce timestamps that do not obviously line up with anything in `/var/log`, and knowing whether the displayed time is local or UTC is a prerequisite for correlating with anything. And **dblog is a poor long-term logging destination** regardless of formatting — it writes to the database on the request path and is capped by row count — so a site doing real diagnosis is usually better served by `syslog` or a shipped log, with dblog kept for convenience.

---

- Show seconds in the log listing.
- Establish the order of log entries.
- Correlate Drupal logs with server logs.
- Debug a sequence of events.
- Read timestamps at higher precision.
- Match a log entry to a request.
- Investigate an error's timing.
- Compare cron timing with a failure.
- Improve log readability.
- Trace a slow request.
- Match log entries to an APM trace.
- Diagnose a race condition.
- Confirm which event happened first.
- Improve incident investigation.
- Read the log in a known timezone.
- Support a post-incident review.
- Debug a deployment problem.
- Correlate errors across systems.
