<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Site Studio ACSF (sitestudio_acsf) — agent index

**Site Studio** configuration for **Acquia Site Factory**.
Version **1.0.0-beta4** (**beta**). Core `^9 || ^10 || ^11`. Depends on `cohesion_templates`.
Both products are commercial — on any other stack this has nothing to do.

**The general point worth extracting:** Site Studio **compiles styles into files**, and a platform
treating the codebase as immutable and the filesystem as per-site needs those compiled assets in the
right place at the right time.

**Verify after any platform change** — a factory site rendering **unstyled** after a deployment is
usually a compiled-asset path problem, not a configuration one.