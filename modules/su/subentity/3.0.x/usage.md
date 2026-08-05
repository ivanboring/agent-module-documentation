<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Sub Entity provides a framework for **subentities** — content entities that belong to a parent and are managed through it, the Paragraphs idea generalised so a project can define its own composite structures.

---

Drupal has one built-in answer to "entities that only exist as part of another entity" — Paragraphs — and it is a good answer with strong opinions: paragraph types, a specific widget, revisions tied to the host. When a project needs the pattern but not those opinions, the alternative has been to hand-build a content entity type with the boilerplate that implies. This module supplies the framework instead: `src/Entity` for the base classes, `EntityHtmlRouteProvider` and `BundleHtmlRouteProvider` for route generation, `BundleListBuilder` for the admin UI, `ReferencedEntityAccessControlHandler` — which is the important one, because a subentity's access should derive from its parent rather than be decided independently — plus `src/Services` and a `src/Drush` namespace for generation commands. Admin lives at `/admin/structure/subentities` behind a requirement of **both** `administer subentities` and `administer site configuration` (the comma in the route requirement is Drupal's AND). Composer requires Drush 12 or newer and conflicts with anything below it, so the Drush integration is not optional in practice. Core is `^10 || ^11`.

---

- Define entities that belong to a parent entity.
- Model composite data without Paragraphs.
- Derive a child entity's access from its parent.
- Generate subentity boilerplate with Drush.
- Build an order-line style structure.
- Keep child records out of the main content list.
- Manage subentity bundles from the admin UI.
- Delete children when the parent is deleted.
- Avoid hand-writing entity boilerplate.
- Model repeated structured data on an entity.
- Give a project its own composite pattern.
- Replace a bespoke child entity type.
- Keep parent and child access in step.
- Provide admin routes for subentity bundles.
- Model survey questions and answers.
- Build a specification-sheet structure.
- Prototype a data model quickly.
- Generate bundles from the command line.
