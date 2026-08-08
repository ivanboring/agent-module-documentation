<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia CMS — this module provides the shared foundation — common configuration, roles, and functionality every other Acquia CMS module builds on.

---

Acquia CMS is Acquia's Drupal distribution, assembled from small single-purpose modules. This is one of its infrastructural components rather than a content type: the shared foundation — common configuration, roles, and functionality every other Acquia CMS module builds on.

Like the rest of the family it is **distribution configuration and glue**, designed to work with `acquia_cms_common` and the other acquia_cms modules present. It is exactly right on an Acquia CMS site and a strong set of assumptions on an unrelated one. Where it depends on an external platform — search infrastructure, or the proprietary Site Studio builder — that dependency has to be satisfied for the module to function, which is why some of the family will not enable on a minimal site without the rest of the distribution's configuration in place.

Treat the Acquia CMS modules as a set adopted together, not as standalone features to cherry-pick.

---
- Provide the shared Acquia CMS layer.
- Supply common roles and permissions.
- Underpin the Acquia CMS content types.
- Share configuration across the family.
- Enable as the Acquia CMS base.
- Provide editorial roles.
- Anchor the Acquia CMS distribution.
- Depend on it from other acquia_cms modules.
- Get common metatag and pathauto setup.
- Standardise the Acquia CMS admin experience.
- Ship developer and support submodules.
- Keep cross-cutting config in one place.
- Stay enabled while any acquia_cms module is on.
- Provide the family's base configuration.
- Support the Acquia CMS editorial model.
- Reuse Acquia's shared conventions.
- Base a site on the Acquia CMS common layer.
- Coordinate the acquia_cms components.