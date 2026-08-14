<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Print + TypeSet.sh (entity_print_typeset) — agent index
**A typeset.sh HTML-to-PDF print-engine plugin for Entity Print.**

- **Version:** 1.0.x (1.0.0-alpha2 release)
- **Core:** ^10 || ^11
- **Depends:** entity_print:entity_print (+ paid `typesetsh/typesetsh` Composer lib)
- **Plugin:** `@PrintEngine(id="typeset", export_type="pdf")` → `Plugin\EntityPrint\PrintEngine\Typeset` extends `PdfEngineBase`
- **Config:** none of its own; choose the engine via Entity Print.

**Security:** no routes, permissions or config; PDF access is governed entirely by Entity Print's own access checks. `send()` sets a Content-Disposition filename supplied by the Entity Print caller. No findings.
