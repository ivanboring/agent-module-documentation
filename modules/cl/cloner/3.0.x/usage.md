<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cloner is an entity clone plugin system.

---

Cloner provides a pluggable entity-clone system — duplicating entities (nodes, and other entity types)
with configurable, plugin-driven handling of how fields/references are cloned, for a flexible clone/duplicate
workflow. It requires PHP 8.1, provides its own permissions, ships a `cloner_examples` submodule, in the
Development package.

Use it to clone entities via a plugin system. It is a content-editing feature that creates new entities from
existing ones; cloning creates content, so it is governed by normal **create access** plus its permission —
gate who can clone (the resulting content respects the user's create permissions). It has no access-control
role beyond that. Configure the clone plugins.

---

- Clone entities via a plugin system.
- Duplicate nodes/entities.
- Handle field/reference cloning via plugins.
- Require PHP 8.1.
- Provide its own permissions.
- Ship an examples submodule.
- Govern by normal create access + permission.
- Gate who can clone.
- Have no access-control role beyond that.
- Configure the clone plugins.
- Handle entity cloning.
- Clone content.
- Duplicate entities.
- Configure cloning.
- Handle duplication.
- Clone entities.
- Configure the plugins.
- Clone with plugins.
- Restrict cloning.
- Duplicate content.
