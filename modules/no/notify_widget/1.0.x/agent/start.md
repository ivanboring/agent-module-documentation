<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Notify Widget (notify_widget) — agent index

In-site notifications — sending plus a display widget. Version **1.0.15**. Core `^10 || ^11`.

Sits between email (ignored) and nothing (tells them nothing) — suits things that matter but are
not urgent.

**Three questions decide whether it is worth having:** **volume** (notify on everything and users
stop looking), **read state** (undismissable becomes clutter; silently-marked-read may never be
seen), and **retention** (they accumulate per user forever unless something expires them — a
storage question and, since notifications quote content, a data-retention one).

**Decide what a notification may contain** — one quoting a restricted document has copied that
content somewhere with different access rules.