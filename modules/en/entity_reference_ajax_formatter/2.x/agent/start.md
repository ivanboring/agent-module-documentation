<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Reference Ajax Formatter (entity_reference_ajax_formatter) — agent index

Renders entity-reference fields with **referenced entities loaded via AJAX** (deferred). Version
**2.0.2**. Performance formatter.

**Security:** the deferred/AJAX render must honour the **same access checks** as inline rendering —
verify referenced content the user can't see isn't exposed on the AJAX path.