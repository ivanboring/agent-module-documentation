<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drutopia Dev (drutopia_dev) — agent index

**Dependency-only meta-module assembling a Drutopia developer/feature-builder toolkit (Devel, Entity Clone, full Drutopia feature set).**

- **Version:** 2.0.x · **Core:** ^10.2 || ^11 || ^12 · **Package:** Drutopia
- **Contents:** `features.yml` marker only — no routes, permissions, services, or hooks of its own.
- **Depends on:** devel, entity_clone, drutopia_core, drutopia_search + the Drutopia content features; submodule `drutopia_dev_findit`.
- **Security:** inert itself; the effective surface is its dependencies. Because it brings in Devel and Entity Clone, keep it to dev/staging and do not enable on production. No findings in this module.
