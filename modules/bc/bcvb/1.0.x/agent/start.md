<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bypass Core View Builder (BCVB) — agent index

**Bypasses core's entity view display (view builder)** for selected entities (custom/lighter render). Provides
permissions. Version **1.0.0-beta1**. Core `^10.3||^11`.

Developer/display — bypassing the view builder also **bypasses its field-access checks + formatters**, so the
custom render path must **re-apply field/entity access + sanitization** (else leaked fields / XSS). No access role
of its own beyond permission.
