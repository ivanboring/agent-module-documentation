<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Menu tree (menu_tree) — agent index

Replaces the node form's flat **menu parent** `<select>` with a browsable tree widget.
No dependencies. Core requirement `^10.3 || ^11`.

Key facts:
- **Widget substitution only.** Menu link storage is unchanged, so enabling or disabling it has
  no data consequences — it is a cheap, reversible editorial improvement.
- Surface: `src/MenuTreeItems.php`, `src/Menu/`, `src/Hook/`,
  `src/NodeFormSubmitHandler.php`, `menu_tree.module`, `config/schema`.
- No routes and no permissions of its own — access follows the node form and core's
  `administer menu`.
- The problem it solves is scale: core renders the whole menu flattened with leading hyphens for
  depth, which stops being readable somewhere around a hundred links or five levels. On a small
  menu core's control is fine.
- Linted upstream (`phpstan.neon`).
