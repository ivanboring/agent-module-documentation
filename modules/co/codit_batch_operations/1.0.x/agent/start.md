<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Codit Batch Operations (codit_batch_operations) — agent index

Framework for defining and running **batch jobs**. Version **1.0.12**. Core `^10 || ^11`.

Turns a folder of ad-hoc Drush scripts into named operations with a UI and a record. **The record
matters as much as the running** — "did anyone run the backfill on production?" costs hours when
the answer is in someone's shell history.

**Two deliberate points:** a batch operation is **arbitrary code modifying content at scale**, so
who may run one is closer to `administer site configuration` than to a content permission,
whatever the default is; and a batch touching thousands of entities has **no undo** — run against a
copy, make it idempotent, and log what it changed rather than only that it ran.