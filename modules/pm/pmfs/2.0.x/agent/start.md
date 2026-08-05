<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Prevent Multiple Form Submissions (pmfs) — agent index

**Server-side** duplicate-submission blocking. Settings at `/admin/config/system/pmfs`.
Version **2.0.0**, packaged **2023** — an old release still declaring `^10 || ^11`. Verify
behaviour rather than assuming maintenance.

**Why server-side is the only kind that works.** Disabling the button with JavaScript covers the
impatient double-click and nothing else — not a second click with the script not running, not a
resubmitted POST after back-navigation, not a request received whose response was lost, not a
deliberate replay. The consequences are concrete: two orders, two registrations, two payment
attempts, two identical nodes to reconcile.

**Two things determine how well it fits:**
1. **What counts as "the same submission" is the whole design.** A **token per rendered form** is
   the right primitive — it distinguishes a genuine second submission from a resubmission of the
   same one. Matching on user + form id + time window will block someone legitimately adding
   records in sequence.
2. **It is not a rate limiter.** The aim is **idempotency for one form render**, not throttling
   abuse. A form needing protection from automated flooding still needs core's **flood control** or
   something in front of the site.
