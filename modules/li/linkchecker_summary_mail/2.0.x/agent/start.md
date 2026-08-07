<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Link Checker Summary Mail (linkchecker_summary_mail) — agent index

Emails a **periodic summary** of Link Checker findings. Version **2.0.0-beta4** (**beta**).
Core `^10 || ^11`. Depends on `linkchecker`.

Inverts the report-nobody-reads problem — findings arrive where the people who can fix them are.

**The digest design decides whether it works:** too frequent is noise, too sparse lets problems sit,
and a summary that repeats every broken link every time **buries the three that broke this week**
under the hundred that have been broken for a year. Distinguish new from backlog.

**Recipients matter** — "the webmaster address" usually means nobody; the people who can fix a link
own the content it is in.

**Caveat on link checking generally:** it requests every external link on a schedule, i.e. traffic
to other people's sites. Keep the interval reasonable — an aggressive checker is indistinguishable
from a scraper.