<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Role Access Control builds per-role view permissions for content on top of **ADVA** (Advanced Access), so "only these roles may see this content" becomes a grant rather than a custom node-access implementation.

---

Drupal's node access grants system is powerful and unpleasant to implement: a module declares grants, another realm, and a mistake produces silent over-disclosure that is hard to notice and hard to test. ADVA exists to make that machinery reusable, and RAC is the role-based policy on top of it — `AccessPermissions::permissions()` generates the per-role permissions at runtime through a `permission_callbacks` entry, and `src/Plugin` supplies the ADVA plugins that turn them into grants. A `rac_relations` submodule extends the model to related entities. Its `configure` key points at `adva.settings`, i.e. it is administered through ADVA's own settings rather than a page of its own — a useful signal that ADVA is where the behaviour lives. Core requirement is `^9 || ^10 || ^11 || ^12`, already spanning Drupal 12. As with any node-access module, two checks belong in adoption: node access grants require a **rebuild** after configuration changes on an existing site, and grants are OR-combined across modules, so another access module granting view will override a RAC restriction.

---

- Restrict content visibility to specific roles.
- Give a members' role access to premium content.
- Hide internal documents from the public.
- Apply role-based access as node grants.
- Avoid writing a custom node access module.
- Restrict a content type to staff roles.
- Extend access to related entities.
- Combine role access with ADVA's other plugins.
- Model a subscriber-only content tier.
- Keep access decisions in configuration.
- Support an intranet's role structure.
- Grant view access per role and bundle.
- Reuse ADVA's grant machinery.
- Restrict a document library by department role.
- Enforce access in listings and search.
- Audit which roles can see which content.
- Prepare a node-access setup for Drupal 12.
- Replace a bespoke grants implementation.
