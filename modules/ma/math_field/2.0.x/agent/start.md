<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Math Field (math_field) — agent index

Field formatter that **evaluates a text field as arithmetic** and renders the result.
Version **2.0.4**. Core `^9 || ^10 || ^11`. No dependencies.
No routes, permissions or config page. Declares `package: custom`, so it appears under **custom**
on Extend.

Supports `+ - * /`, parentheses, decimals. **Cannot handle negative numbers or unary operations**
(README states this). `(2 + 3) * 4.5` works; `-5 + 3` does not.

**No `eval()`** — a hand-written lexer + parser exposed as a service. The restricted grammar *is*
the security property: a parser that knows only four operators cannot be made to do anything else.
Cite when someone proposes `eval()` for a formula field.

Errors render **inline** in output, so a malformed expression is visible to site visitors — check
public-facing displays.

Stores the **expression**, not the result: it recomputes on every render and cannot be sorted or
filtered in Views.