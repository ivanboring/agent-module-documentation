<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Another Entity Iterator provides a helper for iterating over entities.

---

Another Entity Iterator provides a **developer utility for iterating over entities** — a helper that
loads and iterates entities in manageable batches so custom code (bulk updates, reports, migrations) can
process large numbers of entities without exhausting memory. It requires PHP 8.2, in the Utility package.

Use it as a developer helper for entity iteration. It is a developer/API module; it operates on entities under
the calling code's control (loading bypasses per-entity access unless you check it), so **apply access checks
in your own code** if the iteration feeds user-facing output, and it has no content or access role of its own.
Use the iterator in your code.

---

- Iterate over entities in batches.
- Process large entity sets.
- Avoid exhausting memory.
- Require PHP 8.2.
- Serve developers.
- Support bulk updates/reports/migrations.
- Apply access checks in your own code.
- Have no content/access role of its own.
- Use the iterator in code.
- Handle entity iteration.
- Iterate entities.
- Configure nothing (helper).
- Batch entities.
- Handle the iterator.
- Load entities.
- Depend on it.
- Handle the utility.
- Process entities.
- Use the helper.
- Provide entity iteration.
