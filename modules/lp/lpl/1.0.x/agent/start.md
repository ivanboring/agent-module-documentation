<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Logo per language (lpl) — agent index

One site logo per installed language. **No dependencies, no `src/`, no routes, no permissions,
no config page.** Core requirement `^9 || ^10 || ^11`.

Key facts:
- Whole module: `lpl.module`, `lpl.info.yml`, `README.md`, `README.txt`, `LICENSE.txt`.
- Configuration lives in the **existing theme settings form** — the module adds a logo field per
  installed language there rather than creating an admin page of its own. That is where to look
  when someone asks "where do I set this?".
- It declares **no dependency on `language` or `content_translation`**. On a monolingual site it
  offers exactly one language and does nothing useful; it will not error, but it has no purpose
  there.
- Contrast with `domain_access_logo` (documented in wave 57), which varies the logo per *domain*.
  The two solve the same shape of problem along different axes and can coexist.
