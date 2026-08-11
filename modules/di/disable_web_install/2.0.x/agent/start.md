<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Disable Web Install — agent index

**Disables installing modules and themes via the web** (force filesystem/Composer). Depends on core `system`,
`update`. Version **2.0.0**. Core `>=10`.

**Security-positive** hardening — the web install flow can add arbitrary code (a foothold); disabling it enforces a
controlled deployment pipeline. Complements (not replaces) restricting install permissions.
