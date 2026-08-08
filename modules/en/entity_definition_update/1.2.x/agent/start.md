<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Definition Update — agent index

Developer helper to **apply entity type/field definition updates via regular `hook_update_N()`** — safe,
deploy-friendly schema reconciliation (no UI button / ad-hoc code). Depends on core `system`, `field`.
Version **1.2.0**. Core `^9||^10||^11`.

Developer/deploy-context tool (no public route). Applies storage changes — run through the update
pipeline; test in non-production.
