<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Enum Field lets a list field take its allowed values from a **PHP enum** in code instead of from a list typed into the field settings form, so the option set lives where the rest of the domain logic lives and cannot drift from it.

---

Drupal's core `options` module stores allowed values as field configuration: a site builder types `draft|Draft`, `review|In review` into a textarea, and the code that later branches on those values has to hard-code the same strings with nothing enforcing the match. This module replaces the source of truth. Point the field at a backed PHP enum and the cases become the allowed values, so adding a case adds an option and renaming one is a refactor the IDE can perform. `src/ComputedEnum.php` exposes the enum instance rather than the raw scalar, which is the real payoff: application code receives a typed enum case and can use `match` on it with static analysis behind it. `src/Migration.php` plus a Drush command namespace handle moving an existing list field onto an enum. Requirements are `php: 8.1` — enums do not exist before that — and core `options`; there are no routes, permissions or config forms of its own. This is a developer's field type: it makes options non-editable through the UI on purpose.

---

- Define a list field's options in code as a PHP enum.
- Stop allowed values drifting from the constants used in code.
- Refactor an option's name safely across a codebase.
- Get a typed enum case out of a field instead of a string.
- Use `match` over a field value with static analysis.
- Prevent site builders editing a domain-critical option set.
- Share one option set across several fields.
- Version-control an option list as code.
- Migrate an existing list field onto an enum.
- Keep workflow states in sync with the enum that drives them.
- Document options with enum methods.
- Add a new option through a code review rather than a config change.
- Validate stored values against the enum.
- Give a status field a canonical definition.
- Reduce magic strings in custom modules.
- Reuse a package's enum as field options.
- Support translated labels from enum cases.
- Catch removed options at deploy time rather than at runtime.
