<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Feeds Dependency (feeds_dependency) — agent index

Lets a **Feeds** importer be declared a **dependency** of another, so it runs first.
Version **dev-2.0.x**. Core `^9 || ^10 || ^11`. Depends on `feeds`.

Solves cross-feed reference ordering: authors before articles, categories before products —
otherwise references dangle or rows are skipped, and the workaround is remembering the manual run
order (which breaks on schedule/alphabetical runs).

Value is entirely in multi-feed setups. Confirm the dependency graph matches your content's
reference structure.