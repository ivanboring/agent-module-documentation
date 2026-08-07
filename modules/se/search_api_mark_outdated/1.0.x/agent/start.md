<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Search API Mark Outdated (search_api_mark_outdated) — agent index

Flags content in **Search API views** that has not been updated within a configured period.
Version **1.0.0**. Core `^10 || ^11`. Depends on `search_api`.

**Dual audience is the interesting part:** for a reader an age marker is honesty about how much to
trust the page; for an editor it is a work queue appearing in normal use rather than requiring a
deliberate audit.

**Two decisions worth making rather than defaulting:** what counts as outdated differs wildly by
content type (news stales in a month, an organisational history in a decade), so one site-wide
threshold is wrong for most of the site; and **"changed" is not "reviewed"** — a typo fix resets the
timestamp, so this measures editing activity, not accuracy. If accuracy matters, sort on a separate
reviewed-date field.