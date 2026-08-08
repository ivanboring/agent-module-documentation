<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Block Usage Report (block_usage_report) — agent index

Read-only admin report at **`/admin/reports/block-usage`** listing enabled blocks and where they
are placed. Version **1.0.4**. Core `^10.1 || ^11`. No dependencies.

Key value: a `LayoutBlockFinder` service surfaces **Layout Builder** placements — the case the core
block layout page misses. Answers "where is this block actually used?" before a delete/refactor.

Low-risk: controller + finder + route, no writes. Declares `package: Custom` (appears under Custom
on Extend). **Confirm the route's access requirement** before relying on it in a shared environment —
it exposes structural information about the site.