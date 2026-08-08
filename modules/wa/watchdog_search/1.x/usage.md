<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Watchdog Search adds a search field to the database log (dblog) report page, so log messages can be filtered by text.

---

The core Recent log messages page (dblog) has type and severity filters but no free-text search, so finding a specific message in a busy log means paging through it. Watchdog Search adds a search field to that page. It is an admin diagnostic convenience gated by the same access as the log report. The one thing to remember is that logs can contain sensitive data (the campaign has repeatedly seen modules log credentials, tokens or personal data), so search access to the log is access to whatever those messages contain — keep the dblog report permission restricted, as always.

---

- Search the dblog messages.
- Filter logs by text.
- Find a specific log entry.
- Search Recent log messages.
- Speed up log triage.
- Add a log search field.
- Filter a busy log.
- Restrict log access.
- Diagnose from logs faster.
- Remember logs hold sensitive data.
- Enable when the feature is needed.
- Keep it disabled otherwise.
- Restrict administration to trusted roles.
- Confirm behaviour on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep the setup minimal.
- Document why it was added.
- Verify it fits your theme.
- Audit access to it.
- Match it to your use case.