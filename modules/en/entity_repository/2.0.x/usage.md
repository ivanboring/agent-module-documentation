<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Repository provides base repository classes to extend, so entity queries live in a named service instead of being scattered through controllers and forms.

---

The problem it addresses is familiar in any Drupal codebase past a certain size: `$this->entityTypeManager->getStorage('node')->getQuery()->condition(...)` appears in a controller, then in a block plugin, then in a form, each copy slightly different, each forgetting `accessCheck()` in its own way. The repository pattern puts that query behind a method with a name — `NewsRepository::getLatestPublished()` — defined once, tested once, and injected where it is needed. This module supplies the base classes and the service pattern: declare a service with `parent: entity_repository.repository.node`, set `$bundles` to constrain results, add the queries the domain actually needs. Its own README is honest about the scope — *"This module won't do much by itself"* — and an `entity_repository_example` submodule shows the shape. Version **2.0.5** on `^8.8` through `^11`, no dependencies, no routes, no permissions. The one thing to be deliberate about is **access checking**: centralising queries is an opportunity to get `accessCheck(TRUE)` right in one place, and equally an opportunity to get it wrong in one place that everything then inherits. Decide per repository method whether it returns what the current user may see or what exists, and make that explicit in the method name.

---

- Centralise entity queries in a service.
- Stop repeating query code across controllers.
- Name a domain query.
- Test queries in isolation.
- Constrain a repository to one bundle.
- Inject queries instead of storage.
- Reduce duplication in a large codebase.
- Give queries a documented API.
- Make access checking consistent.
- Share a query between a block and a controller.
- Build a domain layer over entities.
- Simplify a controller.
- Follow a repository pattern in Drupal.
- Provide queries to a custom module.
- Make query changes in one place.
- Support unit testing of queries.
- Model a news archive query.
- Standardise query conventions in a team.
