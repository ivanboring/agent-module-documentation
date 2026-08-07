<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Codit Batch Operations provides a framework for defining and running batch jobs.

---

Every project accumulates one-off data jobs: re-save every node so a computed field populates, migrate a field's values into a new structure, clean up after an import, backfill something a deployment forgot. Written as ad-hoc Drush scripts they are unrepeatable, unlogged, and known only to whoever wrote them.

A framework makes each one a defined operation with a name, a UI to run it, and a record that it ran — which turns a folder of scripts into something a team can use and audit.

**The value is as much in the record as the running.** "Did anyone run the backfill on production?" is a question that costs hours when the answer lives in someone's shell history, and minutes when there is a list of operations and when each last ran.

**Two things to be deliberate about.** A batch operation is arbitrary code that modifies content at scale, so who may run one is a serious permission — closer to `administer site configuration` than to a content permission — and it should be treated that way regardless of what the module's default is. And a batch that touches thousands of entities is not reversible by clicking undo: run it against a copy first, make it idempotent so a re-run is safe, and log what it changed rather than only that it ran.

---

- Define a repeatable batch job.
- Re-save nodes to populate a computed field.
- Migrate field values into a new structure.
- Backfill data a deployment missed.
- Clean up after an import.
- Record that an operation ran.
- Answer whether a job ran on production.
- Replace a folder of ad-hoc scripts.
- Restrict who may run batch operations.
- Treat batch permission as administrative.
- Run against a copy first.
- Make an operation idempotent.
- Log what an operation changed.
- Resume a long-running job.
- Audit batch operations on a site.
