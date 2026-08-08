<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia CMS — this module provides the installation-code glue for Acquia Site Studio (the Cohesion low-code page builder) — it wires Site Studio into an Acquia CMS site and therefore requires the proprietary Site Studio platform.

---

Acquia CMS is Acquia's Drupal distribution, assembled from small single-purpose modules. This is one of its infrastructural components rather than a content type: the installation-code glue for Acquia Site Studio (the Cohesion low-code page builder) — it wires Site Studio into an Acquia CMS site and therefore requires the proprietary Site Studio platform.

Like the rest of the family it is **distribution configuration and glue**, designed to work with `acquia_cms_common` and the other acquia_cms modules present. It is exactly right on an Acquia CMS site and a strong set of assumptions on an unrelated one. Where it depends on an external platform — search infrastructure, or the proprietary Site Studio builder — that dependency has to be satisfied for the module to function, which is why some of the family will not enable on a minimal site without the rest of the distribution's configuration in place.

Treat the Acquia CMS modules as a set adopted together, not as standalone features to cherry-pick.

---
- Integrate Site Studio with Acquia CMS.
- Wire in the Cohesion page builder.
- Install Site Studio configuration.
- Build low-code layouts on Acquia CMS.
- Require the Site Studio platform.
- Use Acquia's visual page builder.
- Provide Site Studio install code.
- Depend on the proprietary Cohesion product.
- Enable only with a Site Studio license.
- Set up Site Studio components.
- Adopt Acquia's low-code approach.
- Provide drag-and-drop page building.
- Integrate Cohesion templates.
- Match the Acquia CMS Site Studio model.
- Base pages on Site Studio.
- Extend Site Studio configuration.
- Coordinate Site Studio with the family.
- Provide the Site Studio bridge.