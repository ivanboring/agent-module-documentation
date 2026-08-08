<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Feeds Dependency lets you declare that one Feeds importer depends on another, so the dependency runs first and referential data lines up when the dependent feed imports.

---

Real-world imports are rarely independent. A feed of articles references a feed of authors; a feed of products references a feed of categories. If the articles import before the authors exist, the references dangle or the rows are skipped, and the usual workaround is to remember to run the feeds in the right order by hand — which fails the first time someone runs them alphabetically or on a schedule.

This module makes the ordering explicit and enforced. You mark a feed as depending on another, and Feeds runs the dependency first, so the referenced entities exist before the referencing feed looks for them. It turns an implicit, error-prone convention into configuration that the import process honours.

It depends on the **Feeds** module, since it is extending that module's importers, and its value is entirely in multi-feed setups — a single independent feed has nothing to depend on. For anyone maintaining a set of related imports, it removes a whole class of ordering bugs. Confirm the dependency graph matches the reference structure of your content, since a wrong or missing dependency reintroduces the ordering problem it exists to solve.

---

- Run one feed before another.
- Import authors before articles.
- Import categories before products.
- Enforce feed import order.
- Resolve references across feeds.
- Avoid dangling references on import.
- Declare a feed dependency.
- Remove manual run-order steps.
- Make scheduled feed runs correct.
- Chain related imports.
- Import a referenced feed first.
- Fix skipped rows from missing references.
- Model a feed dependency graph.
- Coordinate multi-feed migrations.
- Keep import order in configuration.
- Support a normalized content import.
- Prevent order-dependent import bugs.
- Match dependencies to reference structure.
- Run a dependency chain automatically.
- Maintain a set of related feeds.