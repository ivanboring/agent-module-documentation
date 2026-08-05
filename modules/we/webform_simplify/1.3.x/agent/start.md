<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Simplify (webform_simplify) — agent index

Hides parts of **Webform**'s administration interface. Requires `webform >= 6.1`. Permissions:
`configure webform simplify`, `edit any webform settings`. Version **1.3.0**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**The problem is density, and it is real.** Webform's settings screen carries a dozen vertical tabs
— handlers, conditional logic, per-element access, submission limits, confirmation types, email
tokens, export settings, variants. For a developer that density is the point; for the editor asked
to change the confirmation message it is a screen where **the right control is hidden among fifty
wrong ones**, and the outcome is a support request or a setting changed by accident.

**Keep this distinction clear — the module makes it easy to blur: hiding is not restricting.**
A setting removed from the interface is still reachable through:
- the form's **configuration export**,
- a **second form display**,
- **`drush config:set`**,
- the Webform UI on **another site** where this module is not enabled.

**If an editor *must not* change submission handlers, that is a permission** — and Webform has its
own. Use this to reduce noise for people who are **trusted and overwhelmed**; use permissions for
people who are **not trusted**. Confusing them produces a site that looks locked down and is not.
