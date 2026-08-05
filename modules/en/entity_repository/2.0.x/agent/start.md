<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Repository (entity_repository) — agent index

Base **repository** classes to extend, so entity queries live in named services rather than being
copied through controllers, blocks and forms. Submodule `entity_repository_example` shows the
shape. Version **2.0.5**. Core requirement `^8.8 || ^9 || ^10 || ^11`.
No routes, no permissions, no configuration.

Usage shape (from its README):
```yaml
news.repository.news:
  class: Drupal\news\Repository\NewsRepository
  parent: entity_repository.repository.node
```
`$bundles` on the class constrains results.

Key facts:
- **Its README states the scope plainly:** *"This module won't do much by itself. Extend the base
  classes and create your own repository classes."* It is a pattern plus plumbing, not a feature.
- **Be deliberate about `accessCheck()`.** Centralising queries is a chance to get access checking
  right in one place — and equally a chance to get it wrong in one place everything inherits.
  Decide per method whether it returns *what this user may see* or *what exists*, and put that
  distinction in the method name.
