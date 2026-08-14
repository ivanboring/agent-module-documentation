<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# chophper (chophper) — agent index

**HTML-aware text truncation formatters.** Two field formatters extending core `TextTrimmedFormatter`, powered by the `code-atlantic/chophper` PHP library.

**Version:** 1.0.x (1.0.0-rc1). Core: `^10 || ^11`. Needs core `text` + composer lib `code-atlantic/chophper`.

Formatters: `chophper_trimmed` (types `text`, `text_long`, `text_with_summary`) and `chophper_summary_or_trimmed` (`text_with_summary`). Settings: `trim_limit`, `truncate_by` (words/characters/sentences/blocks), `ellipsis`, preserve-words. Configured on Manage Display only — no routes, permissions, services or config objects of its own.

**Security:** presentation-only; no routes or endpoints. No security findings.