<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia CMS — Place provides a ready-made **Place content type** with its fields, form and view displays, and related configuration already built — one component of the Acquia CMS content model.

---

Acquia CMS is Acquia's Drupal distribution, and it is assembled from small single-purpose modules like this one. Rather than a site builder creating a location or venue type from scratch — the fields, the widgets, the view modes, the pathauto pattern, the metatag defaults — this module ships that configuration as a unit, so the Place type exists and is editor-ready the moment it is enabled.

The value and the limitation are the same fact: it is **distribution configuration, not a generic feature**. It encodes Acquia's opinions about what a Place should be, and it is designed to sit alongside the rest of the Acquia CMS family and share their common layer (`acquia_cms_common`). On an Acquia CMS site it is exactly right. On an unrelated site it is a strong set of assumptions to take on — usable as a starting point, but you inherit the whole model, and it expects its siblings to be present.

Because it is configuration, what it does is fixed by that config: it creates the Place content type and wires its displays. Extending it means adding fields and adjusting displays as you would any type. It travels with a config export like any other content-type configuration.

---
- Add a Place content type to a site.
- Author a location or venue.
- Get a pre-built Place content type with fields configured.
- Reuse Acquia CMS's Place model.
- Standardise Place content across a site.
- Get view displays for Place out of the box.
- Get form display for Place configured.
- Skip building the Place content type by hand.
- Adopt Acquia CMS's Place configuration.
- Provide editors a ready Place form.
- Base a custom Place type on this one.
- Get pathauto and metatag defaults for Place.
- Enable Place as part of Acquia CMS.
- Match the Acquia CMS content model.
- Export the Place config with the site.
- Extend the Place content type with extra fields.
- Use Place with the rest of the Acquia CMS family.
- Provide a consistent Place editing experience.