<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Link Checker Summary Mail emails a periodic summary of what Link Checker has found.

---

Link Checker finds broken links and puts them on a report. The report is only useful if someone looks at it, and on most sites nobody does — broken links accumulate silently until a user complains or an audit finds them.

A scheduled summary inverts that: the findings arrive where the people who can fix them already are.

**The design question is the same as for any digest, and getting it wrong makes the feature worthless.** Too frequent and it becomes noise people filter; too sparse and problems sit for weeks. And a summary that reports every broken link every time, including the hundred that have been broken for a year, buries the three that broke this week — a digest is only actionable if it distinguishes new findings from the standing backlog.

Worth pairing with a decision about who receives it. "The webmaster address" usually means nobody; the people who can actually fix a broken link are the ones who own the content it is in.

**One caveat on link checking generally**: a checker requests every external link on a schedule, which is traffic to other people's sites from yours. Keep the interval reasonable and honour any rate limits, because an aggressive checker is indistinguishable from a scraper.

---

- Email a broken-link summary.
- Get findings to the people who can fix them.
- Schedule a periodic digest.
- Distinguish new findings from the backlog.
- Avoid a digest that becomes noise.
- Choose recipients who own the content.
- Avoid sending to an unread webmaster address.
- Set a reasonable checking interval.
- Honour external sites' rate limits.
- Avoid looking like a scraper.
- Track broken links over time.
- Prompt a link cleanup.
- Report on link health to stakeholders.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
