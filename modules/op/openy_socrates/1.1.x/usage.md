<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Open Y Socrates is a facade service that lets parts of an Open Y site talk to each other without depending on each other directly.

---

A distribution the size of Open Y has dozens of modules that need each other's data — a schedule needs locations, a landing page needs programme information, a search needs both. Wiring those together with direct dependencies produces a graph nobody can change, where removing one module breaks five.

A facade breaks that. Modules ask Socrates for what they need; Socrates knows which module answers. The consumer depends on the facade, not on the provider, so a provider can be replaced, and a site that does not install one degrades rather than fatals.

This is an architectural module rather than a feature. Its usefulness is to someone working inside Open Y — reading it is the fastest way to understand how the distribution is put together, and implementing against it is how a custom module joins that ecosystem without hard-wiring itself to a particular set of Open Y modules.

On a site that is not Open Y it has nothing to do. If you find it enabled outside that context, it arrived as a dependency of something else in the family.

The name is a joke about a middleware that answers questions, and worth recognising as such rather than searching for a feature it does not have.

---

- Let Open Y modules communicate without direct dependencies.
- Ask the facade for data another module provides.
- Replace a provider module without breaking consumers.
- Degrade gracefully when a provider is absent.
- Understand Open Y's architecture.
- Join the Open Y ecosystem with a custom module.
- Avoid hard-wiring to specific Open Y modules.
- Read the facade to learn the distribution.
- Identify why it is enabled on a site.
- Recognise it as architecture, not a feature.
- Plan a custom Open Y integration.
- Audit Open Y module dependencies.
- Decouple a schedule from a location module.
- Extend the distribution cleanly.
- Document the facade's contracts for a team.
- Review Socrates usage during an upgrade.
