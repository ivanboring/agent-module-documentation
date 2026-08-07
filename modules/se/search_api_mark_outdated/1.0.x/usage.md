<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Search API Mark Outdated flags content in search results that has not been updated for a configured period.

---

Search results present everything as equally current, and on a site with years of content that is misleading in a specific way: a policy page last touched in 2019 looks exactly like one revised last week. Readers cannot tell, and neither can the editors who should be reviewing it.

Marking outdated results makes age visible where people actually encounter content, which is search rather than an admin report.

That dual audience is the interesting part. For a **reader**, an age marker is honesty — it says how much to trust what follows. For an **editor**, the same marker is a work queue that appears in the course of normal use rather than requiring a deliberate audit.

**Two decisions worth making rather than defaulting.** What counts as outdated differs wildly by content type — a news article is stale in a month and an organisational history is fine for a decade — so a single site-wide threshold will be wrong for most of the site. And **"changed" is not the same as "reviewed"**: a typo fix resets the timestamp without anyone having checked the content, so the marker measures editing activity rather than accuracy. If accuracy is what matters, a separate reviewed-date field is what to sort on.

---

- Mark stale content in search results.
- Show readers how current a page is.
- Give editors a work queue in normal use.
- Set an outdated threshold per content type.
- Avoid one site-wide staleness rule.
- Distinguish changed from reviewed.
- Add a reviewed-date field for accuracy.
- Prompt a content review cycle.
- Identify pages nobody has touched.
- Improve trust in search results.
- Sort results by freshness.
- Audit content age across a site.
- Plan a review schedule.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
