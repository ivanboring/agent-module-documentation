<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Menu tree replaces the "parent item" dropdown on the node form with a browsable tree, so an editor placing a page in a deep menu can see the structure instead of scanning a flat list of indented dashes.

---

Core renders the menu parent selector as a `<select>` whose options are the whole menu flattened, with hierarchy indicated by leading hyphens. On a site with a hundred menu links across five levels the control becomes unusable: the indentation is hard to read, similarly named siblings are indistinguishable, and there is no way to collapse a branch you do not care about. This module substitutes a tree widget — `MenuTreeItems` builds the structure, `src/Menu` and `src/Hook` integrate with the form, and `NodeFormSubmitHandler` handles the submission. There are no dependencies beyond core, no routes and no permissions of its own; access is whatever the node form and `administer menu` already grant. Core requirement is `^10.3 || ^11`, and the project is upstream-linted with `phpstan.neon`. Because it is purely a widget substitution, nothing about how menu links are stored changes — turning it off restores the core control with no data implications.

---

- Pick a menu parent from a browsable tree.
- Place a page in a deep menu structure.
- See menu hierarchy while choosing a parent.
- Collapse irrelevant menu branches.
- Distinguish similarly named menu siblings.
- Improve the node form on a large site.
- Reduce mis-filed pages.
- Speed up menu placement for editors.
- Make a five-level menu manageable.
- Avoid scanning a long indented dropdown.
- Improve editorial accuracy on navigation.
- Support a council or university site's menus.
- Reduce training on menu placement.
- Keep menu storage unchanged.
- Make the parent selector keyboard-navigable.
- Show only the relevant menu.
- Improve accessibility of the parent control.
- Restore the core widget by disabling the module.
