<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Open Y Socrates (openy_socrates) — agent index

**Facade service** letting Open Y modules communicate without depending on each other directly.
Version **1.1.0**. Core `^10 || ^11`. No dependencies. Submodule: `openy_theme_override`.

Architecture, not a feature. Consumers depend on the **facade**, not the provider — so a provider
can be replaced and a site missing one degrades rather than fatals.

Useful to someone working **inside** Open Y: reading it is the fastest way to understand how the
distribution fits together, and implementing against it is how a custom module joins the ecosystem
without hard-wiring to a particular set of modules.

Outside Open Y it has nothing to do — if enabled there, it arrived as a dependency.