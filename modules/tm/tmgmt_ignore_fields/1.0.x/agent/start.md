<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# TMGMT Ignore Fields (tmgmt_ignore_fields) — agent index

Excludes admin-specified fields from **TMGMT** translation jobs. Version **1.0.3**.
Core `^10 || ^11`. Depends on `tmgmt`, `tmgmt_content`.
Configure at `/admin/config/content/tmgmt-ignore-fields`.

**Why:** TMGMT gathers all translatable fields into a job; some shouldn't go (internal codes,
language-neutral values, machine strings). Excluding them cuts translator word-count and paid-
service cost. Workflow is unchanged; the job is just smaller.

**Verify after configuring:** an ignored field is *silently* absent from jobs, so an over-broad
exclusion shows up as missing translations, not an error. Check nothing genuinely translatable was
excluded.