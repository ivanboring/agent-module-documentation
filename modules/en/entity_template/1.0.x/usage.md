<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Create entities from reusable templates via a builder UI.

---

Entity Template lets site builders create entities from templates — an admin defines a 'builder' with template blueprints, and a build UI walks a user through parameters → blueprint selection → an entity edit form, producing a new entity pre-filled from the template.

**Security warning (as shipped, 1.0.0-alpha15):** ALL build routes (`/entity_template/build/*`) are `_access: 'TRUE'` (anonymous) and the edit step returns a normal entity form via `entityFormBuilder->getForm()` with **no create-access check** — so once any builder is configured, an anonymous visitor can create entities of the configured type without permission. **Gate the build routes with a real permission / `_entity_create_access` before using this on a public site.** Depends on `typed_data`; supports Drupal 9.1+, 10, and 11.

---

- Create entities from templates.
- Define builders + blueprints.
- Walk a build UI (parameters→select→edit).
- Pre-fill entities from a template.
- WARNING: build routes are `_access: TRUE`.
- WARNING: no create-access check on the entity form.
- Allow anonymous entity creation once a builder exists.
- Require permission/`_entity_create_access` gating.
- Depend on `typed_data`.
- Support Drupal 9.1+, 10, and 11.
- Aid content creation.
- Harden before public use.
- Support Drupal.
- Support Drupal.
- Support Drupal.
